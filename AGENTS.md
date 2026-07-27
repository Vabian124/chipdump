# AGENTS.md

## Cursor Cloud specific instructions

### What this repo is

A firmware toolkit for the SK-8168 / Allwinner **F133-B** head unit (Melis RTOS): dump,
unpack, edit, repack, and reflash a 16 MB SPI NOR image (`chipdump.bin`). There is **no app
server, database, service, or automated test suite** — the "application" is the CLI workflow
`dump_tool extract/pack` plus a Python splice, described in `README.md` (§5–§7). Real hardware
flashing (CH341A + head unit) is out of scope for the cloud VM; everything else runs on Linux.

### Toolchain on Linux (important)

- The vendored `melis-tools/melis-tools-windows-x86_64/bin/*.exe` are **Windows PE binaries** and
  the `scripts/*.ps1` wrappers use Windows-style paths. They do **not** run natively on this Linux
  VM (no PowerShell/Wine). Do **not** rely on `scripts/extract.ps1` / `scripts/pack.ps1` here.
- Use the native Linux `dump_tool` instead. The update script installs it (from upstream
  `Gamadril/d1s-melis-tools` v0.1.0) to `~/.local/melis-tools/bin/dump_tool`. `python3` and
  `ffmpeg` are already present in the base image.

### Running the workflow (Linux equivalents of the .ps1 scripts)

```bash
DT="$HOME/.local/melis-tools/bin/dump_tool"

# extract.ps1 equivalent
"$DT" extract chipdump.bin out_dir

# pack.ps1 equivalent: rebuild MinFS, then splice ROOTFS into chipdump.bin at flash 0x190000
"$DT" pack <unpacked_dir> _pack_tmp.bin          # produces <unpacked_dir>/gpt.bin.out/2_ROOTFS.bin.repacked
# then splice 2_ROOTFS.bin.repacked into a copy of chipdump.bin at offset 0x190000, size 14614528
```

### Non-obvious gotchas

- `dump_tool pack` **intentionally exits with `Error: "uart_debug_rx not found in sys_config.fex"`**
  on this dump. This is expected (see `README.md` §5 "Why pack.ps1 exists"); the MinFS repack
  (`2_ROOTFS.bin.repacked`) is still produced before it errors, which is all the splice step needs.
- A fresh `dump_tool pack` does **not** reproduce `chipdump.modified.bin` byte-for-byte — MinFS
  serialization is not identical to the vendor build. The exact flash-tested SHA256
  (`5cc79aeb…`) is reproduced only by splicing the **pre-built** `unpacked/gpt.bin.out/2_ROOTFS.bin`
  (14614528 bytes) into `chipdump.bin` at `0x190000`. A freshly repacked image is still a valid
  16 MB image and round-trips through `extract`.
- Run pack in a **copy** of `unpacked/` (e.g. under `/tmp`) to keep the repo tree clean; pack
  intermediates (`*.repacked`, `_pack_tmp.bin`) are gitignored but are written next to the tree.
- Custom boot video recipe (README §6): `ffmpeg -i in.mp4 -an -c:v libx264 -profile:v baseline
  -level 3.0 -pix_fmt yuv420p -s 800x480 -r 25 -movflags +faststart stamovie.mp4`, then place at
  `unpacked/gpt.bin.out/2_ROOTFS.bin.out/res/stamovie.mp4` and repack.

### How to validate changes (no test suite)

- Verify image sizes are `16777216` bytes and SHA256 against `CHECKSUMS.txt`.
- Round-trip check: `extract` a packed image and confirm edited files (e.g. `res/stamovie.mp4`)
  come back byte-identical.
