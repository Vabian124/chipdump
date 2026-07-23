# Flashing `chipdump.modified.bin`

## What changed

Only the **ROOTFS** MinFS partition. Boot video `d:\res\stamovie.mp4` is now the
re-encoded clip from `desiredvideo/faseout_boot_video.mp4` (~3.0 s, 800×480 H.264).

`boot0`, `bootA`, and `UDISK` are identical to `chipdump.bin`.

## Checklist

1. Keep `chipdump.bin` as recovery.
2. Confirm `chipdump.modified.bin` is **exactly 16 777 216 bytes**.
3. Programmer: CH341 Black (or compatible) at **3.3 V** (pin-28 mod on black boards).
4. Chip select: **XM25QH128C**.
5. Erase + write full chip with `chipdump.modified.bin`.
6. Prefer read-back verify.
7. Power the head unit and confirm the new shorter boot animation.

## Rebuild after further edits

```powershell
.\scripts\pack.ps1
```

See [GUIDE.md](GUIDE.md) for the full reverse-engineering and pack rationale.
