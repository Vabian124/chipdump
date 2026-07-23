# Flashing `chipdump.modified.bin`

**Status: verified on device** (NeoProgrammer + CH341A Pro + test clip).

## Hardware

| Item | Detail |
|------|--------|
| Board | **SK-8168-MAIN-V6.3** |
| SoC | Allwinner **F133-B** |
| Screen | **5″** Android Auto head unit |
| SPI NOR | **XM25QH128C** 16 MB — chip **closest to the main processor** |
| Programmer | **CH341A Pro** (Amazon) with SOIC **test clip** |
| Software | **NeoProgrammer** |
| Voltage | **3.3 V** only |

## What changed vs stock

Only the **ROOTFS** MinFS partition. Boot video `d:\res\stamovie.mp4` is the
re-encoded clip from `desiredvideo/faseout_boot_video.mp4` (~3.0 s, 800×480 H.264).

`boot0`, `bootA`, and `UDISK` match `chipdump.bin`.

## Checklist

1. Keep `chipdump.bin` as recovery (CRC32 `0x26430A0B`).
2. Confirm `chipdump.modified.bin` is **exactly 16 777 216 bytes**.
3. Optionally verify SHA256 — see [CHECKSUMS.txt](../CHECKSUMS.txt)
   (`5cc79aeb94e66337bc81c4c8fce54f84d1acba9ef4b5f13dc77a697e86105ff9`).
4. Locate the SPI NOR **next to the F133-B**; attach the test clip (check pin 1).
5. NeoProgrammer → **XM25QH128C** @ 3.3 V → erase + write full chip.
6. Read-back verify if available.
7. Power the unit; confirm the shorter boot animation.

## Rebuild after further edits

```powershell
.\scripts\pack.ps1
```

See [GUIDE.md](GUIDE.md) for reverse-engineering and why packing is layout-aware
for this dump.
