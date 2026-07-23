# SK-8168 / F133-B Melis firmware toolkit

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Vabian124/chipdump?display_name=tag)](https://github.com/Vabian124/chipdump/releases/latest)
[![Flash verified](https://img.shields.io/badge/flash-verified-brightgreen)](#3-flash-the-modified-image)
[![SoC F133-B](https://img.shields.io/badge/SoC-F133--B-blue)](#1-hardware)
[![SPI XM25QH128C](https://img.shields.io/badge/SPI-XM25QH128C%2016MB-informational)](#1-hardware)

Dump, edit, and reflash the SPI NOR on a **5″ Android Auto** head unit:
board **SK-8168-MAIN-V6.3**, SoC **Allwinner F133-B**, OS **Melis RTOS**
(not Android Linux).

The included `chipdump.modified.bin` replaces the stock boot movie with a
~3 second clip. It was written with **NeoProgrammer** + **CH341A Pro** + SOIC
test clip and **confirmed working on device**.

---

## Contents

1. [Hardware](#1-hardware)
2. [Quick start — download & flash](#2-quick-start--download--flash)
3. [Flash the modified image](#3-flash-the-modified-image)
4. [Repository layout](#4-repository-layout)
5. [Edit firmware (unpack → change → pack)](#5-edit-firmware-unpack--change--pack)
6. [Boot video](#6-boot-video)
7. [How the image is laid out](#7-how-the-image-is-laid-out)
8. [Checksums](#8-checksums)
9. [Credits](#9-credits)
10. [License & safety](#10-license--safety)

---

## 1. Hardware

| Item | Detail |
|------|--------|
| Board | `SK-8168-MAIN-V6.3` |
| SoC | Allwinner **F133-B** |
| Display | **5″** Android Auto head unit |
| SPI NOR | **XM25QH128C**, 16 MB (128 Mbit), 3.3 V |
| NOR location | Package **closest to the main processor (F133-B)** |
| Stock firmware | `SK1.4-8168V6.2-LVWMA-2504011620` |
| Programmer | **CH341A Pro** (Amazon) + SOIC **test clip** |
| Software | **NeoProgrammer** (verified); other CH341 tools OK at 3.3 V |

**Voltage:** 3.3 V only. 5 V will destroy the flash.

---

## 2. Quick start — download & flash

1. Get **[v1.0.0 release](https://github.com/Vabian124/chipdump/releases/latest)** assets, or clone this repo.
2. Keep `chipdump.bin` as your recovery image.
3. Flash **`chipdump.modified.bin`** (steps below).
4. Optional: verify SHA256 from [§8 Checksums](#8-checksums).

| File | Role |
|------|------|
| [`chipdump.bin`](chipdump.bin) | Original dump — recovery |
| [`chipdump.modified.bin`](chipdump.modified.bin) | **Flash this** — new boot video |
| [`desiredvideo/`](desiredvideo/) | Source clip, encode used in-image, stock backup |

---

## 3. Flash the modified image

1. Open the unit and find the **SPI NOR next to the F133-B** (XM25QH128C).
2. Attach the SOIC test clip (confirm pin 1 / notch orientation).
3. Connect **CH341A Pro** at **3.3 V**.
4. In **NeoProgrammer**, select chip **XM25QH128C**.
5. Confirm file size is **16 777 216** bytes.
6. Erase + write `chipdump.modified.bin` (full chip).
7. Read-back verify if the tool offers it.
8. Power the head unit — boot animation should be the shorter clip.

If anything goes wrong, re-flash original `chipdump.bin` the same way.

---

## 4. Repository layout

```text
chipdump.bin                 Original 16 MB SPI dump
chipdump.modified.bin        Flash-tested image (boot video replaced)
unpacked/                    Editable tree from dump_tool extract
  boot0.bin                  eGON.BT0 SPL — do not touch casually
  gpt.bin.out/
    1_bootA.bin.out/         Melis kernel + sys_config.fex
    2_ROOTFS.bin.out/        MinFS: apps, UI, res/stamovie.mp4
    3_UDISK.bin.out/         FAT16: Config.ini + Save/
desiredvideo/                Boot-video source materials
melis-tools/                 Windows dump_tool (Gamadril/d1s-melis-tools)
scripts/extract.ps1          Unpack chipdump.bin → unpacked/
scripts/pack.ps1             Rebuild chipdump.modified.bin (layout-aware)
CHECKSUMS.txt                CRC32 / SHA1 / SHA256
LICENSE · NOTICE · SECURITY.md
```

---

## 5. Edit firmware (unpack → change → pack)

### Requirements

- Windows + PowerShell
- Python 3 on `PATH` (used by `pack.ps1`)
- Tools under `melis-tools/` (already vendored)

### Commands

```powershell
git clone https://github.com/Vabian124/chipdump.git
cd chipdump

.\scripts\extract.ps1          # optional if unpacked/ already present
# edit files under .\unpacked\
.\scripts\pack.ps1             # writes .\chipdump.modified.bin
```

Then flash as in [§3](#3-flash-the-modified-image).

### What to edit

| Goal | Path under `unpacked/gpt.bin.out/` |
|------|-------------------------------------|
| Boot video | `2_ROOTFS.bin.out/res/stamovie.mp4` |
| Live settings | `3_UDISK.bin.out/Config.ini` |
| Factory defaults | `2_ROOTFS.bin.out/apps/Config.ini` |
| Wallpapers | `2_ROOTFS.bin.out/apps/WallPaper/*.jpg` (800×480) |
| Logos | `2_ROOTFS.bin.out/apps/Logo/` |
| CarPlay icons | `2_ROOTFS.bin.out/apps/CarPlay/icon_*.png` |
| Board / LCD / GPIO | `1_bootA.bin.out/sys_config.fex` |

**Harder:** most UI chrome lives inside proprietary `.data` packs (`Main.data`,
etc.), not loose PNGs.

**Do not expect** `.mod` / `.axf` / `epos.img` to become editable C without a
full RISC-V reverse-engineering project.

### Why `pack.ps1` exists

Upstream `dump_tool pack` (v0.1.0) hardcodes GPT offsets/sizes from another
F133 layout and always patches `uart_debug_rx`. **This** dump has a larger
`bootA`, a 512 KiB `UDISK`, and only `uart_debug_tx`.

`scripts/pack.ps1` therefore:

1. Uses `dump_tool` only to **rebuild MinFS** (a `uart_debug_rx` error is expected).
2. Splices that ROOTFS into a copy of `chipdump.bin` at flash offset **`0x190000`**.
3. Leaves `boot0`, `bootA`, and `UDISK` unchanged.

---

## 6. Boot video

| | Stock | Modified (in this repo) |
|--|--------|-------------------------|
| Path | `d:\res\stamovie.mp4` | same |
| Resolution | 800×480 | 800×480 |
| Codec | H.264 | H.264 baseline, yuv420p, 25 fps |
| Duration | ~6.1 s | ~3.0 s |
| Player | Melis `mixture` module | same — length = MP4 duration |

### Replace with your own clip

```bash
ffmpeg -i input.mp4 -an -c:v libx264 -profile:v baseline -level 3.0 \
  -pix_fmt yuv420p -s 800x480 -r 25 -movflags +faststart stamovie.mp4
```

Copy over `unpacked/gpt.bin.out/2_ROOTFS.bin.out/res/stamovie.mp4`, run
`.\scripts\pack.ps1`, flash.

Optional override: `Config.ini` → `[STARTUP]` → `startUpVideoPath=`
(empty = default `stamovie.mp4`).

Source materials: `desiredvideo/faseout_boot_video.mp4`,
`desiredvideo/stamovie.encoded.mp4`, stock backup
`desiredvideo/stamovie.mp4.stock.bak`.

---

## 7. How the image is laid out

Useful if you are adapting this workflow to another dump or automating with an AI.

### Signatures (this dump)

| Flash offset | Marker | Meaning |
|--------------|--------|---------|
| `0x000004` | `eGON.BT0` | Allwinner boot0 |
| `0x00C000` | GPT | Partition table |
| `0x010000` | `sunxi-package` | Melis boot package (`bootA`) |
| `0x190000` | `MINFS` | ROOTFS |
| `0xF80000` | FAT16 | UDISK |

### GPT partitions (absolute)

| Name | Offset | Size | Format |
|------|--------|------|--------|
| `boot0` | `0x000000` | 48 KiB | eGON.BT0 |
| `bootA` | `0x010000` | ~1.5 MiB | sunxi-package (LZMA Melis + config) |
| `ROOTFS` | `0x190000` | ~13.9 MiB | MinFS |
| `UDISK` | `0xF80000` | 512 KiB | FAT16 |

Melis drive letters: **D:** ROOTFS, **E:** UDISK, **F:** SD (when present).

### Identify a new dump

1. Size must be **16 777 216** for XM25QH128C (or match your part).
2. Confirm `eGON.BT0`, `sunxi-package`, `MINFS`.
3. Prefer `dump_tool extract`; if pack fails, parse GPT and splice ROOTFS yourself at the real offsets (as this repo does).

---

## 8. Checksums

All images are **16 777 216** bytes. Full table: [`CHECKSUMS.txt`](CHECKSUMS.txt).

| File | CRC32 | SHA256 |
|------|-------|--------|
| `chipdump.bin` | `0x26430A0B` | `4d236715e7eb6bdb50aceff6a381d453eff2bfe0f90025389cd956f20e3085e6` |
| `chipdump.modified.bin` | `0xA347F5D5` | `5cc79aeb94e66337bc81c4c8fce54f84d1acba9ef4b5f13dc77a697e86105ff9` |

```powershell
Get-FileHash .\chipdump.modified.bin -Algorithm SHA256
```

---

## 9. Credits

| Who | Contribution |
|-----|----------------|
| **[Vabian124](https://github.com/Vabian124)** | Dump, hardware notes, boot-video mod, on-device verification, this repository |
| **[Gamadril](https://github.com/Gamadril)** / [d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools) | `dump_tool`, MinFS, Melis boot-package tooling |
| **[ChrisHughes](https://github.com/ChrisHughes)** / [allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool) | MinFS helpers used during verification |
| Melis / Allwinner community | eGON, MinFS, and F133 car-unit research |
| Cursor agent session | Unpack workflow, layout-aware pack script, documentation |

---

## 10. License & safety

- **Documentation & scripts:** [MIT](LICENSE)
- **Firmware binaries:** third-party IP may apply — see [NOTICE](NOTICE)
- **Security / bricking risk:** [SECURITY.md](SECURITY.md)

**Before you write the chip**

1. Keep a verified `chipdump.bin`.
2. Use **3.3 V** only.
3. Confirm **16 777 216** byte file size.
4. Program the NOR **closest to the F133-B**.

No warranty. Flashing modified firmware can brick the unit; you accept that risk.
