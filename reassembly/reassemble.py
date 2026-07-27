#!/usr/bin/env python3
"""Round-trip-safe disassembler/reassembler for the Melis RISC-V ELF modules.

Goal: prove (and enable) that every code section can be turned into GNU-assembler
source and reassembled back to the EXACT original bytes. This is the honest form of
"decompile so we can reassemble it" for stripped binaries: we emit each instruction's
real encoding as assembler data (`.2byte`/`.4byte`) annotated with the decoded mnemonic,
which `as` reassembles deterministically to identical bytes. To edit an instruction, a
maintainer replaces a `.Nbyte 0x...  # mnemonic` line with a real mnemonic (or a new
encoding); everything else stays byte-for-byte stable.

Usage:
    reassemble.py emit  <elf> <out.s>     # write reassemblable asm for the code sections
    reassemble.py verify <elf>            # emit+assemble in a temp dir, compare bytes; exit 0 if identical

Requires: riscv64-linux-gnu-{objdump,objcopy,as,readelf} (GNU binutils).
"""
from __future__ import annotations
import re
import subprocess
import sys
import tempfile
from pathlib import Path

TOOL = "riscv64-linux-gnu-"
OBJDUMP, OBJCOPY, AS, READELF = (TOOL + t for t in ("objdump", "objcopy", "as", "readelf"))

# Executable PROGBITS sections we round-trip as instruction encodings.
CODE_SECTIONS = (".text",)


def run(cmd: list[str]) -> str:
    return subprocess.check_output(cmd, text=True, stderr=subprocess.DEVNULL)


def section_info(elf: str) -> dict[str, dict]:
    """name -> {addr, size, type, flags} from readelf -SW."""
    info: dict[str, dict] = {}
    for ln in run([READELF, "-SW", elf]).splitlines():
        m = re.search(r"\]\s+(\.\S+)\s+(\w+)\s+([0-9a-f]+)\s+([0-9a-f]+)\s+([0-9a-f]+)", ln)
        if m:
            name, styp, addr, off, size = m.groups()
            info[name] = {"type": styp, "addr": int(addr, 16), "size": int(size, 16)}
    return info


def mnemonics(elf: str) -> dict[int, str]:
    """vaddr -> decoded instruction text (for readable comments)."""
    out: dict[int, str] = {}
    for ln in run([OBJDUMP, "-d", "-M", "no-aliases", elf]).splitlines():
        m = re.match(r"\s*([0-9a-f]+):\t([0-9a-f ]+)\t(.*)", ln)
        if m:
            out[int(m.group(1), 16)] = m.group(3).strip()
    return out


def section_bytes(elf: str, name: str, dst: Path) -> bytes:
    run([OBJCOPY, "-O", "binary", f"--only-section={name}", elf, str(dst)])
    return dst.read_bytes()


def emit_asm(elf: str, out_s: Path) -> list[str]:
    """Emit reassemblable asm for code sections. Returns section names emitted."""
    info = section_info(elf)
    mnem = mnemonics(elf)
    lines: list[str] = [
        f"# Reassemblable disassembly of {Path(elf).name}",
        "# Instruction encodings are emitted as data so `as` reproduces exact bytes.",
        "# Edit a line's mnemonic comment into a real instruction to change code.",
        ".option norvc",
    ]
    emitted: list[str] = []
    with tempfile.TemporaryDirectory() as td:
        for name in CODE_SECTIONS:
            if name not in info:
                continue
            raw = section_bytes(elf, name, Path(td) / "s.bin")
            base = info[name]["addr"]
            lines.append(f'\n.section {name},"ax",@progbits')
            i, a = 0, base
            while i < len(raw):
                is2 = (raw[i] & 3) != 3  # RVC when low two bits != 0b11
                if is2 and i + 2 <= len(raw):
                    enc = raw[i] | (raw[i + 1] << 8)
                    directive, n = f".2byte 0x{enc:04x}", 2
                elif i + 4 <= len(raw):
                    enc = int.from_bytes(raw[i:i + 4], "little")
                    directive, n = f".4byte 0x{enc:08x}", 4
                else:  # trailing padding
                    directive, n = f".byte 0x{raw[i]:02x}", 1
                c = mnem.get(a, "")
                lines.append(f"    {directive}    # {a:08x}: {c}" if c else f"    {directive}    # {a:08x}")
                i += n
                a += n
            emitted.append(name)
    out_s.write_text("\n".join(lines) + "\n")
    return emitted


def verify(elf: str) -> bool:
    with tempfile.TemporaryDirectory() as td:
        td = Path(td)
        s = td / "mod.s"
        emitted = emit_asm(elf, s)
        if not emitted:
            print(f"  [skip] {Path(elf).name}: no code section")
            return True
        run([AS, "-march=rv32gc", "-o", str(td / "mod.o"), str(s)])
        ok = True
        for name in emitted:
            orig = section_bytes(elf, name, td / "orig.bin")
            rebuilt = section_bytes(str(td / "mod.o"), name, td / "reb.bin")
            same = orig == rebuilt
            ok &= same
            print(f"  [{'PASS' if same else 'FAIL'}] {Path(elf).name} {name} "
                  f"({len(orig)} bytes)")
        return ok


def main() -> int:
    if len(sys.argv) < 3:
        print(__doc__)
        return 2
    mode, elf = sys.argv[1], sys.argv[2]
    if mode == "emit":
        out = Path(sys.argv[3]) if len(sys.argv) > 3 else Path(elf).with_suffix(".s")
        emit_asm(elf, out)
        print(f"wrote {out}")
        return 0
    if mode == "verify":
        return 0 if verify(elf) else 1
    print(__doc__)
    return 2


if __name__ == "__main__":
    sys.exit(main())
