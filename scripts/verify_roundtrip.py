#!/usr/bin/env python3
"""Cross-platform proof that the Melis firmware toolkit works end to end.

One script, no separate Linux/Windows variants. It runs unchanged on:
  * Windows        (uses the vendored dump_tool.exe, or one on PATH)
  * WSL / Linux    (uses a native dump_tool, or the vendored .exe via Wine)
  * macOS          (uses a native dump_tool on PATH)

It proves three things about this repo without touching real hardware:

  [1] The shipped images match CHECKSUMS.txt.
  [2] The pack.ps1 splice logic reproduces the flash-tested chipdump.modified.bin
      byte for byte (splice unpacked/.../2_ROOTFS.bin into chipdump.bin @ 0x190000).
  [3] A full edit -> dump_tool pack -> splice -> dump_tool extract round trip
      returns an edited file (res/stamovie.mp4) byte-identical.

Usage:
    python3 scripts/verify_roundtrip.py [--dump-tool PATH]

Exit code 0 == all checks passed.
"""
from __future__ import annotations

import argparse
import hashlib
import os
import platform
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

# Layout constants (see README.md sections 5 and 7).
ROOTFS_FLASH = 0x190000
ROOTFS_SIZE = 14614528
EXPECTED_SIZE = 16777216

# Known-good digests from CHECKSUMS.txt.
SHA_STOCK = "4d236715e7eb6bdb50aceff6a381d453eff2bfe0f90025389cd956f20e3085e6"
SHA_MODIFIED = "5cc79aeb94e66337bc81c4c8fce54f84d1acba9ef4b5f13dc77a697e86105ff9"

VENDORED_EXE = REPO / "melis-tools" / "melis-tools-windows-x86_64" / "bin" / "dump_tool.exe"


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _wine_works(path: str) -> bool:
    try:
        r = subprocess.run([path, "--version"], capture_output=True, text=True, timeout=30)
        return r.returncode == 0
    except Exception:
        return False


def find_wine() -> str | None:
    candidates: list[str] = []
    for name in ("wine", "wine64"):
        found = shutil.which(name)
        if found:
            candidates.append(found)
    candidates += ["/usr/lib/wine/wine64", "/usr/lib/wine/wine", "/opt/wine-stable/bin/wine"]
    for cand in candidates:
        # A bare symlink to the wine loader cannot locate itself; validate it runs.
        if os.path.exists(cand) and _wine_works(cand):
            return cand
    return None


def resolve_tool(explicit: str | None) -> tuple[list[str], str]:
    """Return (launch_prefix, description). launch_prefix[-1] is the tool path."""
    candidates: list[str] = []
    if explicit:
        candidates.append(explicit)
    if os.environ.get("DUMP_TOOL"):
        candidates.append(os.environ["DUMP_TOOL"])
    on_windows = platform.system() == "Windows"
    # Prefer a native binary on PATH / in the standard cloud install location.
    for name in (("dump_tool.exe",) if on_windows else ("dump_tool",)):
        p = shutil.which(name)
        if p:
            candidates.append(p)
    candidates.append(str(Path.home() / ".local" / "melis-tools" / "bin" / "dump_tool"))
    # Finally the vendored Windows binary.
    candidates.append(str(VENDORED_EXE))

    for cand in candidates:
        if not cand or not os.path.exists(cand):
            continue
        is_exe = cand.lower().endswith(".exe")
        if is_exe and not on_windows:
            wine = find_wine()
            if not wine:
                continue  # cannot run a .exe here without Wine; keep looking
            return [wine, cand], f"{cand} (via Wine: {wine})"
        return [cand], cand
    raise SystemExit(
        "ERROR: no runnable dump_tool found. Install the native binary "
        "(update script -> ~/.local/melis-tools/bin/dump_tool) or run on Windows, "
        "or install Wine to use the vendored dump_tool.exe."
    )


def run_tool(prefix: list[str], args: list[str]) -> subprocess.CompletedProcess:
    env = dict(os.environ)
    env.setdefault("WINEDEBUG", "-all")
    return subprocess.run(prefix + args, capture_output=True, text=True, env=env)


def check(label: str, ok: bool) -> bool:
    print(f"  [{'PASS' if ok else 'FAIL'}] {label}")
    return ok


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dump-tool", help="explicit path to dump_tool or dump_tool.exe")
    args = ap.parse_args()

    prefix, desc = resolve_tool(args.dump_tool)
    print("=" * 64)
    print("Melis firmware toolkit — cross-platform round-trip proof")
    print(f"  platform : {platform.system()} {platform.machine()}")
    print(f"  python   : {platform.python_version()}")
    print(f"  dump_tool: {desc}")
    print("=" * 64)

    results: list[bool] = []

    # [1] shipped image checksums
    print("[1] Shipped image checksums (CHECKSUMS.txt)")
    stock = (REPO / "chipdump.bin").read_bytes()
    modified = (REPO / "chipdump.modified.bin").read_bytes()
    results.append(check("chipdump.bin size 16 MiB", len(stock) == EXPECTED_SIZE))
    results.append(check("chipdump.bin sha256", sha256(stock) == SHA_STOCK))
    results.append(check("chipdump.modified.bin size 16 MiB", len(modified) == EXPECTED_SIZE))
    results.append(check("chipdump.modified.bin sha256", sha256(modified) == SHA_MODIFIED))

    # [2] splice logic reproduces the flash-tested image exactly
    print("[2] pack.ps1 splice reproduces flash-tested chipdump.modified.bin")
    rootfs = (REPO / "unpacked" / "gpt.bin.out" / "2_ROOTFS.bin").read_bytes()
    recon = bytearray(stock)
    recon[ROOTFS_FLASH:ROOTFS_FLASH + ROOTFS_SIZE] = rootfs
    results.append(check("reconstructed == modified sha256", sha256(bytes(recon)) == SHA_MODIFIED))

    # [3] edit -> pack -> splice -> extract round trip using dump_tool
    print("[3] edit -> dump_tool pack -> splice -> dump_tool extract round trip")
    with tempfile.TemporaryDirectory() as td:
        work = Path(td)
        tree = work / "unpacked"
        shutil.copytree(REPO / "unpacked", tree)

        # Edit a marker into the boot-video path (any bytes work for a round-trip test).
        stamovie = tree / "gpt.bin.out" / "2_ROOTFS.bin.out" / "res" / "stamovie.mp4"
        marker = b"CURSOR-CLOUD-ROUNDTRIP-" + os.urandom(8)
        edited = marker + stamovie.read_bytes()
        stamovie.write_bytes(edited)
        edited_sha = sha256(edited)

        # Rebuild MinFS. dump_tool intentionally errors on uart_debug_rx for this
        # dump (see README section 5) AFTER writing 2_ROOTFS.bin.repacked, so a
        # non-zero exit here is expected and tolerated.
        run_tool(prefix, ["pack", str(tree), str(work / "_pack_tmp.bin")])
        repacked = tree / "gpt.bin.out" / "2_ROOTFS.bin.repacked"
        results.append(check("dump_tool pack produced 2_ROOTFS.bin.repacked", repacked.exists()))
        if not repacked.exists():
            print_summary(results)
            return 1

        rp = repacked.read_bytes()
        results.append(check("repacked starts with MINFS magic", rp.startswith(b"MINFS")))

        chip = bytearray(stock)
        part = bytearray(ROOTFS_SIZE)
        part[:len(rp)] = rp
        chip[ROOTFS_FLASH:ROOTFS_FLASH + ROOTFS_SIZE] = part
        built = work / "chipdump.custom.bin"
        built.write_bytes(chip)
        results.append(check("built image is exactly 16 MiB", built.stat().st_size == EXPECTED_SIZE))

        # Extract the freshly built image and confirm the edit survived.
        out = work / "verify_out"
        run_tool(prefix, ["extract", str(built), str(out)])
        got = out / "gpt.bin.out" / "2_ROOTFS.bin.out" / "res" / "stamovie.mp4"
        results.append(check("edited stamovie.mp4 recovered from built image", got.exists()))
        rt_ok = got.exists() and sha256(got.read_bytes()) == edited_sha
        results.append(check("recovered stamovie.mp4 is byte-identical", rt_ok))

    return print_summary(results)


def print_summary(results: list[bool]) -> int:
    print("=" * 64)
    passed = sum(1 for r in results if r)
    total = len(results)
    ok = passed == total
    print(f"RESULT: {passed}/{total} checks passed -> {'ALL PASS' if ok else 'FAILURES PRESENT'}")
    print("=" * 64)
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
