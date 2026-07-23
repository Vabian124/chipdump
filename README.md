# F133 Melis Android Auto firmware (chipdump)

SPI NOR dump from an Allwinner **F133-B** Android Auto head unit.

| Field | Value |
|-------|--------|
| Flash | XM25QH128C, 16 MB, 3.3 V |
| Programmer | CH341 Black (3.3 V pin-28 mod required) |
| Dump CRC32 | `0x26430A0B` |
| Firmware version | `SK1.4-8168V6.2-LVWMA-2504011620` |
| OS | Melis RTOS (not Android Linux) |

## Layout

```
chipdump.bin                 # original 16 MB SPI dump (keep as backup)
unpacked/                    # editable tree from dump_tool extract
  boot0.bin                  # eGON.BT0 SPL — leave alone unless you know why
  gpt.bin.out/
    1_bootA.bin.out/
      sys_config.fex         # board / LCD / GPIO / Wi‑Fi config
      epos.img               # Melis + OpenSBI kernel (RISC-V binary)
    2_ROOTFS.bin.out/        # MinFS: apps, UI, modules, wallpapers
    3_UDISK.bin.out/         # FAT16: Config.ini + Save/
melis-tools/                 # Windows dump_tool + helpers
dumpinfo.txt                 # programmer session notes
```

## Edit → pack → flash

```powershell
# Extract (already done once into .\unpacked)
.\scripts\extract.ps1

# Edit files under .\unpacked\...

# Repack a flashable image
.\scripts\pack.ps1
# → writes chipdump.modified.bin

# Flash chipdump.modified.bin with AsProgrammer / NeoProgrammer
# Chip: XM25QH128C @ 3.3 V
```

### Sensible edit targets

| Goal | Path |
|------|------|
| User settings | `unpacked\gpt.bin.out\3_UDISK.bin.out\Config.ini` |
| Default app config | `unpacked\gpt.bin.out\2_ROOTFS.bin.out\apps\Config.ini` |
| Wallpapers / logos | `...\apps\WallPaper\`, `...\apps\Logo\` |
| Hardware / LCD | `...\1_bootA.bin.out\sys_config.fex` |

Compiled `.mod` / `.axf` / `epos.img` are RISC-V binaries — not source.

## Tools

Prebuilt from [Gamadril/d1s-melis-tools](https://github.com/Gamadril/d1s-melis-tools) v0.1.0 (`dump_tool.exe`).

Optional Python helpers: [ChrisHughes/allwinner-image-tool](https://github.com/ChrisHughes/allwinner-image-tool).

## Safety

1. Keep the original `chipdump.bin`.
2. Verify 3.3 V before programming.
3. After pack, compare size to 16 777 216 bytes before writing the chip.
