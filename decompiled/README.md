# Full decomposition & disassembly of `chipdump.bin`

This directory is a **complete static decomposition** of the 16 MiB SPI NOR dump,
produced on the `cursor/experimental-1cbc` branch. It is analysis material, not
buildable source. Read the honest scope note below before assuming anything else.

## What "fully decompiled" does and does NOT mean here

This is a **closed-source Melis RTOS** image for a RISC-V (Allwinner F133-B) device:

- The kernel (`epos.img`) is a **raw OpenSBI + Melis** blob (RT-Thread based).
- Every module under `mod/` and `apps/*.mod` is an **ELF32 RISC-V, statically linked,
  STRIPPED** executable (0 symbols).

Because these are stripped, compiled binaries with **no source, no debug info, and no
public SDK**, there is:

- **NO** conversion back to recompilable C. Disassembly and decompiler pseudo-C are for
  *reading/understanding only*; they cannot be reassembled into a booting image.
- **NO** OS "recompile" path. Melis has no package manager and no build tree here, so
  "update packages / recompile the OS" is not possible with what exists.

The **real, working rebuild path** for this device is the resource/repack layer:
edit files in the unpacked tree, rebuild the MinFS ROOTFS with `dump_tool`, and splice it
back into the 16 MiB image (see `README.md` §5 and `../mods/optimized-ui/`). That is the
only way to produce a flashable, modified image, and it is demonstrated to work.

## Contents

| Path | What it is |
|------|-----------|
| `INVENTORY.md` | Every file in `bootA` + all `.mod`/`.exe` with size, type, sha256 |
| `binwalk_chipdump.txt` | `binwalk` signature scan of the full 16 MiB image |
| `kernel/epos.img.info.md` | Kernel header/marker analysis (OpenSBI, CHKv1.0) |
| `kernel/epos.img.strings.txt` | Extracted strings (reveals RT-Thread/lwIP source paths) |
| `kernel/epos.img.disasm.txt.gz` | Raw RV64 disassembly of the whole blob (data regions decode as noise; analysis only) |
| `modules/<name>.readelf.txt` | Full ELF headers/sections/program headers per module |
| `modules/<name>.disasm.txt[.gz]` | `objdump -d` RISC-V disassembly per module (stripped: no symbol names) |
| `modules/<name>.strings.txt` | Extracted strings per module |

## Tools used

- `dump_tool extract` (native Linux, upstream `Gamadril/d1s-melis-tools` v0.1.0)
- `riscv64-linux-gnu-objdump` / `readelf` (GNU binutils 2.42)
- `binwalk`, `strings`

## Regenerate

```bash
DT="$HOME/.local/melis-tools/bin/dump_tool"
"$DT" extract ../chipdump.bin /tmp/full_extract
# then per-file: riscv64-linux-gnu-objdump -d <mod>, readelf -aW <mod>, strings, binwalk
```
