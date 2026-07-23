# F133 Melis SPI firmware: full reverse-engineering & edit guide

This document explains **how this repository was produced** and how to
**reproduce the same workflow** on another dump (or with another AI agent).
It is written for humans and for automated assistants.

**Device context (this dump):** Android Auto head unit on Allwinner **F133-B**,
SPI NOR **XM25QH128C** (16 MB, 3.3 V), read with **CH341 Black**.

**Important:** This is **Melis RTOS**, not Android Linux. “Android Auto” here is
an application module inside Melis, not AOSP.

---

## 0. Goals and non-goals

### Goals

- Read the full SPI flash to a binary dump.
- Identify SoC / boot format / partitions.
- Unpack into an editable file tree.
- Change configs, assets (wallpapers, boot video, etc.).
- Repack to a flashable 16 MB image and write it back.

### Non-goals / hard limits

- Turning `.mod` / `.axf` / `epos.img` into editable C source without a full
  Ghidra RE project (RISC-V binaries).
- Bypassing DRM / licenses / paid features.
- Flashing at 5 V on a 3.3 V NOR (will destroy the chip).

---

## 1. Hardware dump (how `chipdump.bin` was obtained)

### Gear

| Item | Notes |
|------|--------|
| Programmer | CH341A / CH341 Black |
| Voltage | **3.3 V only** — black CH341 often needs the pin-28 3.3 V mod |
| Chip | XM25QH128C, SPI ID `204018`, 128 Mbit / 16 MByte |
| Software | AsProgrammer, NeoProgrammer, or similar SPI tools |

### Procedure (high level)

1. Power the head unit **off**; desolder or clip the NOR if in-circuit read is unreliable.
2. Wire SPI: `CS`, `CLK`, `MOSI`, `MISO`, `VCC` (3.3 V), `GND` (+ `WP`/`HOLD` pulled high if required).
3. Select **XM25QH128C** (or correct 16 MB SPI NOR) at **3.3 V**.
4. Read entire main memory → save as `chipdump.bin`.
5. Record CRC (this dump: **CRC32 = `0x26430A0B`**) in `dumpinfo.txt`.

Expected file size: **16 777 216 bytes** (`0x1000000`).

If your CRC differs, you have a different firmware build — the **method** below still applies; offsets may change slightly after unpack.

---

## 2. Identify the image (what we looked for)

Open the dump in a hex viewer or script and look for these signatures:

| Offset (this dump) | Signature / clue | Meaning |
|--------------------|------------------|---------|
| `0x000004` | `eGON.BT0` | Allwinner boot0 (SPL) |
| `0x00C000` | GPT (`EFI PART` at LBA1 of GPT region) | Partition table after boot0 |
| `0x010000` | `sunxi-package` | Melis boot package (TOC1-style) |
| `0x010040` | `MIE;melis-lzma` | LZMA-compressed Melis + OpenSBI |
| `0x190000` | `MINFS` | Melis MinFS root filesystem |
| strings | `opensbi`, `Melis`, `F133`, `d:\res\stamovie.mp4` | Confirms Melis F133 car UI |

### Manual GPT parse (relative to GPT base `0xC000`)

On this image the GPT reports three partitions (LBAs relative to GPT start):

| Name | Role | Approx absolute offset | Format |
|------|------|--------------------------|--------|
| `bootA` | Boot package | `0x10000` | `sunxi-package` |
| `ROOTFS` | System files | `0x190000` | MinFS |
| `UDISK` | User / config | `0xF80000` | FAT16 |

**boot0** is the first `0xC000` bytes (`eGON.BT0`, length field `0xC000`).

### Melis LZMA payload (manual check)

Inside `bootA`:

- Item `melis-lzma`: LZMA alone stream starting with `5D 00 00 80 00 …`
- Decompresses to ~3.3 MB raw image starting with OpenSBI / `CHKv1.0` (not ELF).
- Item `melis-config`: binary `sys_config` (decompiled to `sys_config.fex` by tools).

You do **not** need to do this by hand if you use `dump_tool` (next section).

---

## 3. Tooling (what we installed and why)

### Primary tool (recommended): `dump_tool`

Repo: [Gamadril/d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools)

- Built for **F133 / D1s Melis SPI NOR** dumps.
- **Extract** splits boot0 + GPT partitions, unpacks MinFS + FAT16, decompresses
  Melis LZMA → `epos.img`, decompiles config → `sys_config.fex`.
- **Pack** reverses the process into a full flash image.

This repo already vendors the Windows release under:

```text
melis-tools/melis-tools-windows-x86_64/bin/dump_tool.exe
```

Download yourself (if starting from zero):

```powershell
gh release download v0.1.0 --repo Gamadril/d1s-melis-tools --pattern "melis-tools-windows-x86_64.zip"
Expand-Archive melis-tools-windows-x86_64.zip -DestinationPath melis-tools
```

Linux/macOS builds are on the same release page.

### Optional helpers

| Tool | Use |
|------|-----|
| [ChrisHughes/allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool) | Python MinFS list/extract/replace |
| `ffprobe` / ffmpeg | Inspect/re-encode boot video |
| Ghidra + RISC-V | Deep RE of `.mod` / `epos.img` (advanced) |
| Python 3 | Ad-hoc signature scans, GPT parsing |

### Wrapper scripts in this repo

```powershell
.\scripts\extract.ps1   # chipdump.bin → unpacked\
.\scripts\pack.ps1      # unpacked\ → chipdump.modified.bin
```

---

## 4. Unpack (exact commands used)

From the repo root (with `chipdump.bin` present):

```powershell
.\melis-tools\melis-tools-windows-x86_64\bin\dump_tool.exe extract .\chipdump.bin .\unpacked
# or
.\scripts\extract.ps1
```

### Resulting tree (canonical)

```text
unpacked/
  boot0.bin
  gpt.bin
  gpt.bin.out/
    0_ppt.bin                 # GPT preamble (do not hand-edit)
    1_bootA.bin
    1_bootA.bin.out/
      epos.img                # decompressed Melis + OpenSBI
      melis-lzma.bin          # compressed payload
      melis-config.bin
      sys_config.fex          # editable hardware config
      pin_mappings.md         # generated pin summary
    2_ROOTFS.bin
    2_ROOTFS.bin.out/         # MinFS extracted
      apps/                   # UI, Config.ini, AndroidAuto, wallpapers…
      mod/                    # .mod / drivers / codecs
      res/                    # stamovie.mp4, disp_firmware…
      etc/
      startup.sh
    3_UDISK.bin
    3_UDISK.bin.out/          # FAT16 extracted
      Config.ini              # live user settings
      Save/
```

Firmware version string (this build):

```text
SK1.4-8168V6.2-LVWMA-2504011620
```

(`unpacked/gpt.bin.out/2_ROOTFS.bin.out/apps/Version.txt`)

---

## 5. How we discovered editable surfaces

### String / signature search strategy (for AI agents)

1. Scan dump for `eGON.BT0`, `sunxi-package`, `MINFS`, `EFI PART`.
2. After unpack, ripgrep configs for target features (`stamovie`, `startup_`, `Config.ini` keys).
3. Strings in binaries that **consume** assets:
   - `mod/mixture.mod` → boot logo/movie (`d:\res\stamovie.mp4`, `startup_logo_type`, …)
   - `apps/init.axf` → `startUpVideoPath`, `bPlayStartUpVideo`, `STARTUP` section keys

### High-value edit targets

| Intent | Path | Notes |
|--------|------|--------|
| Runtime settings | `…/3_UDISK.bin.out/Config.ini` | What the unit tends to use after first boot |
| Factory defaults | `…/2_ROOTFS.bin.out/apps/Config.ini` | Shipped defaults; keep in sync if unsure |
| Board / LCD / GPIO | `…/1_bootA.bin.out/sys_config.fex` | `[mixture_para]`, LCD, Wi‑Fi, etc. |
| Boot video | `…/2_ROOTFS.bin.out/res/stamovie.mp4` | Default path hardcoded in `mixture.mod` |
| Wallpapers | `…/apps/WallPaper/*.jpg` | |
| Logos | `…/apps/Logo/`, also `stalogo*.jpg` patterns in mixture | |
| Startup script | `…/startup.sh` | Loads `desktop.mod` |

### Boot video specifics (researched, not yet replaced in-repo)

| Item | Value on this dump |
|------|---------------------|
| File | `res/stamovie.mp4` |
| Format | H.264 + AAC, **800×480**, ~25 fps |
| Duration | **~6.12 s** |
| Player | Melis `mixture` module; exits on `"Play end,exit startup video"` |
| Length control | **Natural MP4 duration** (trim/re-encode to change length) |
| Alternate path | `Config.ini` → `[STARTUP]` `startUpVideoPath=` (empty = default) |
| Kernel side | `sys_config.fex` `[mixture_para]` `startup_logo_type = 3` (video mode) |
| Logo animation (not MP4) | `startup_ani_total_frame` × `startup_ani_inter_time` |

Also referenced by `mixture.mod` (may be absent until created):

- `d:\res\stamovieR.mp4` (rotated)
- `d:\res\stomovie.mp4` / `stomovieR.mp4` (shutdown movie)

Recommended replacement encode (match stock as closely as possible):

```bash
ffmpeg -i input.mp4 -an -c:v libx264 -pix_fmt yuv420p -s 800x480 -r 25 \
  -movflags +faststart stamovie.mp4
```

Then replace `unpacked/.../res/stamovie.mp4`. Duration of that file **is** the boot video length.

---

## 6. Pack and flash

### Pack

```powershell
.\scripts\pack.ps1
# runs: dump_tool pack .\unpacked .\chipdump.modified.bin
```

`dump_tool pack` will:

1. Rebuild MinFS from `2_ROOTFS.bin.out/`
2. Rebuild FAT16 from `3_UDISK.bin.out/`
3. Re-apply `sys_config.fex` into the boot package
4. Splice partitions back into the GPT image
5. Prepend `boot0.bin` → full NOR image

### Verify before write

- Output size must be **16 777 216** bytes for XM25QH128C.
- Keep original `chipdump.bin` untouched as recovery image.
- Optional: compare CRC of unmodified round-trip (`extract` then immediate `pack`) to gain confidence in the tool chain.

### Flash

1. Same CH341 setup, **3.3 V**, chip XM25QH128C.
2. Write `chipdump.modified.bin` (or erase + write full chip).
3. Verify read-back if your programmer supports it.
4. Reseat chip / power unit and test.

---

## 7. Repository setup (what was committed)

Private GitHub repo created as:

```text
https://github.com/Vabian124/chipdump
```

### Included

- `chipdump.bin` — original dump
- `unpacked/` — full editable extract
- `melis-tools/` — Windows `dump_tool` release
- `scripts/` — extract/pack helpers
- `README.md`, `docs/GUIDE.md` (this file), `dumpinfo.txt`

### Ignored (see `.gitignore`)

- Nested clones of upstream sources (`d1s-melis-tools/`, `allwinner-image-tool/`)
- Partial early `extracted/` experiments
- `*.modified.bin` / pack outputs
- Release zip

Commands used:

```powershell
git add .gitignore README.md chipdump.bin dumpinfo.txt melis-tools scripts unpacked
git commit -m "Initial commit: F133 Melis SPI dump with unpacked editable tree."
gh repo create chipdump --private --source=. --remote=origin --push
```

---

## 8. Checklist for another dump / another AI

Copy-paste workflow:

```text
[ ] Confirm 3.3 V programmer + correct SPI NOR part
[ ] Dump full chip → chipdump.bin (note size + CRC32)
[ ] Confirm eGON.BT0 + sunxi-package + MINFS (or run dump_tool and see if extract succeeds)
[ ] dump_tool extract chipdump.bin unpacked/
[ ] Read apps/Version.txt and Config.ini; note screen resolution from UI/video assets
[ ] Edit only needed files (prefer UDISK Config.ini + assets + sys_config.fex)
[ ] dump_tool pack unpacked/ chipdump.modified.bin
[ ] Assert output length == 16777216
[ ] Flash modified image; keep original dump for recovery
```

### If `dump_tool extract` fails

1. Re-check dump size and that the image is not truncated.
2. Confirm Allwinner Melis (not Linux Android `boot.img` / UBI).
3. Fall back to manual GPT + [allwinner_minfs.py](https://github.com/ChrisHughes/allwinner-image-tool) for ROOTFS-only edits.
4. Inspect first 64 bytes for `eGON.BT0`; if missing, you may have the wrong chip or a partial dump.

### If the unit does not boot after flash

1. Re-flash original `chipdump.bin`.
2. Diff what changed (especially `boot0.bin`, `sys_config.fex`, partition sizes).
3. Avoid changing `boot0.bin` or GPT preamble (`0_ppt.bin`) unless you know the format.
4. For boot video: ensure resolution/codec match; a bad MP4 can hang `mixture` startup.

---

## 9. Reference map (this dump)

```text
0x000000  boot0 (eGON.BT0)                    48 KiB
0x00C000  GPT + partitions
0x010000  bootA / sunxi-package               ~1.5 MiB
0x190000  ROOTFS (MINFS)                      ~13.9 MiB
0xF80000  UDISK (FAT16)                       512 KiB
0x1000000 end
```

Drive letters inside Melis (from tooling docs / strings):

- **D:** ROOTFS (MinFS)
- **E:** UDISK (FAT16)
- **F:** SD card (when present) — also `logoCardName=F:` in Config.ini

---

## 10. Credits

- Unpack/repack design: [Gamadril/d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools) (`dump_tool`)
- Optional MinFS utilities: [ChrisHughes/allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool)
- Allwinner Melis / eGON / MinFS community docs and forum posts used for signature confirmation

---

*Generated for the chipdump project so the full path from “SPI read” to “editable tree” is reproducible without the original chat history.*
