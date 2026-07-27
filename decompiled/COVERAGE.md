# Decompilation coverage summary

| Metric | Count |
|--|--|
| Total files extracted from chipdump.bin | 197 |
| RISC-V ELF binaries found | 68 |
| ELF binaries disassembled (`modules/`) | 68 |
| Raw-binary blobs disassembled | 2 (boot0.bin, epos.img) |

## Resource files by extension (non-ELF)
```
     75 data
     31 plg
     20 mod
     18 txt
     16 drv
      5 jpg
      3 png
      2 exe
      1 vft
      1 tmp
      1 sh
      1 out/res/disp_firmware
      1 mp4
      1 ini
      1 desktop
      1 conf
      1 axf
```

All 68 RISC-V ELF binaries are disassembled; the two raw blobs (eGON.BT0 SPL and
the OpenSBI+Melis kernel) are disassembled as raw RV64. Non-ELF resources (.data UI
packs, fonts, images, audio, INI) are catalogued in MANIFEST.md — these are data, not code.
