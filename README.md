# F133 Melis Android Auto firmware (chipdump)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Vabian124/chipdump)](https://github.com/Vabian124/chipdump/releases)
[![Flash verified](https://img.shields.io/badge/flash-verified%20on%20device-brightgreen)](docs/FLASH.md)
[![SoC](https://img.shields.io/badge/SoC-Allwinner%20F133--B-blue)](docs/GUIDE.md)
[![Flash](https://img.shields.io/badge/SPI%20NOR-XM25QH128C%2016MB-informational)](docs/FLASH.md)

Open documentation, tools, and flashable SPI dumps for a **5″ Android Auto**
head unit on **Allwinner F133-B** (Melis RTOS), board **SK-8168-MAIN-V6.3**.

Stock boot animation replaced with a shorter clip; **flashed back with
NeoProgrammer + CH341A Pro + test clip and confirmed working on device.**

| | |
|--|--|
| Board | `SK-8168-MAIN-V6.3` |
| SoC | Allwinner **F133-B** |
| Display | **5″** Android Auto head unit |
| SPI NOR | **XM25QH128C** 16 MB — the chip **closest to the main processor** |
| Firmware | `SK1.4-8168V6.2-LVWMA-2504011620` |
| Programmer | **CH341A Pro** (Amazon) + SOIC test clip |
| Software | **NeoProgrammer** |
| OS | Melis RTOS (not Android Linux) |

**Guides:** [docs/GUIDE.md](docs/GUIDE.md) (full RE workflow) · [docs/FLASH.md](docs/FLASH.md) (flash) · [CHECKSUMS.txt](CHECKSUMS.txt)

## Flash-ready images

| File | Purpose |
|------|---------|
| [`chipdump.bin`](chipdump.bin) | Original dump — **keep for recovery** |
| [`chipdump.modified.bin`](chipdump.modified.bin) | **Flash this** — new ~3 s boot video |
| [`desiredvideo/`](desiredvideo/) | Source MP4, encode used in-image, stock backup |

Release assets and checksums: [Releases](https://github.com/Vabian124/chipdump/releases).

### Quick flash (NeoProgrammer)

1. Identify the **SPI NOR next to the F133-B** (XM25QH128C).
2. Clip with CH341A Pro test clip; power/logic at **3.3 V**.
3. NeoProgrammer → select **XM25QH128C** → erase + write `chipdump.modified.bin` (16 777 216 bytes).
4. Verify SHA256 against [CHECKSUMS.txt](CHECKSUMS.txt) if you re-download.
5. Reassemble and power on — boot video should be the shorter clip.

## Edit → pack → flash

```powershell
.\scripts\extract.ps1          # chipdump.bin → unpacked\
# edit files under .\unpacked\  (e.g. res\stamovie.mp4)
.\scripts\pack.ps1             # → chipdump.modified.bin
```

`scripts/pack.ps1` rebuilds MinFS then splices ROOTFS at **this dump’s** GPT
offset (`0x190000`). Plain upstream `dump_tool pack` alone is **not** safe on
this layout (hardcoded offsets + `uart_debug_rx` assumption).

### Common edit targets

| Goal | Path |
|------|------|
| Boot video | `unpacked\...\res\stamovie.mp4` (800×480 H.264) |
| User settings | `...\3_UDISK.bin.out\Config.ini` |
| Defaults | `...\2_ROOTFS.bin.out\apps\Config.ini` |
| Wallpapers / logos | `...\apps\WallPaper\`, `...\apps\Logo\` |
| Hardware / LCD | `...\1_bootA.bin.out\sys_config.fex` |

Compiled `.mod` / `.axf` / `epos.img` are RISC-V binaries — not source.

## Tools

- Prebuilt [Gamadril/d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools) `dump_tool` under `melis-tools/`
- Optional: [ChrisHughes/allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool)

## Credits

| Who | Contribution |
|-----|----------------|
| **Vabian124** | Dump, hardware notes, boot-video mod, on-device flash verification, repo |
| **[Gamadril](https://github.com/Gamadril)** / [d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools) | `dump_tool` extract / MinFS / Melis boot package tooling |
| **[ChrisHughes](https://github.com/ChrisHughes)** / [allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool) | Python MinFS helpers used for verification |
| Melis / Allwinner community | eGON, MinFS, and F133 car-unit reverse-engineering references |
| Cursor agent session | Structured unpack, layout-aware pack script, docs |

See also [NOTICE](NOTICE) for third-party firmware rights.

## License

- **MIT** for documentation, scripts, and project files — see [LICENSE](LICENSE).
- Firmware binaries: see [NOTICE](NOTICE). Provided as-is; no warranty.

## Safety

1. Keep `chipdump.bin` as recovery.
2. **3.3 V only** on the NOR.
3. Confirm image size **16 777 216** bytes before write.
4. The SPI flash to program is the package **closest to the main F133-B SoC**.
