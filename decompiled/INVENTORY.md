# Firmware inventory (chipdump.bin, fully decomposed)

Generated from a native `dump_tool extract` of the 16 MiB SPI NOR dump.
Columns: relative path (under the extracted tree), size (bytes), file type, sha256.

## bootA (1_bootA.bin.out)

| Path | Size | Type | SHA256 |
|------|------|------|--------|
| `1_bootA.bin.out/epos.img` | 3360664 | data | 4c4fc3923b6b9e7f… |
| `1_bootA.bin.out/melis-config.bin` | 49152 | data | e31c6b6a29aef613… |
| `1_bootA.bin.out/melis-lzma.bin` | 1498400 | LZMA compressed data, streamed | ad730f7abcec5ae2… |
| `1_bootA.bin.out/melis-lzma.decompressed` | 3360664 | data | 4c4fc3923b6b9e7f… |
| `1_bootA.bin.out/pin_mappings.md` | 29698 | ASCII text | 5637b2dbbd3b7a86… |
| `1_bootA.bin.out/sys_config.fex` | 25557 | ASCII text | ed8c869efade24d0… |

## ROOTFS modules (2_ROOTFS.bin.out/mod, apps/*.mod)

| Path | Size | Type | SHA256 |
|------|------|------|--------|
| `apps/AndroidAuto/AndroidAuto.exe` | 27 | ASCII text, with no line terminators | d242ccb688bdd14f… |
| `apps/CarPlay/CarPlay.exe` | 27 | ASCII text, with no line terminators | d242ccb688bdd14f… |
| `apps/desktop.mod` | 27755 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 2ec73f39a2ada09f… |
| `mod/auto.mod` | 920119 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 29f253d209bba7e6… |
| `mod/carlife.mod` | 96455 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 2e4096cc24781645… |
| `mod/carplay.mod` | 871827 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | d3b5e7bae101ff81… |
| `mod/cedar.mod` | 65463 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 0282d4ae43cee3b3… |
| `mod/charset.mod` | 224127 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 8e1190c657d1bde7… |
| `mod/display.mod` | 17559 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 9a79353fa28bd415… |
| `mod/eclink.mod` | 406787 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 18d87a18f2143eea… |
| `mod/ginkgo.mod` | 5007 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 75a3f074570168df… |
| `mod/miracast.mod` | 231055 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 8d23f2710f919d33… |
| `mod/mixture.mod` | 35843 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 7bc0183a08447f7b… |
| `mod/motolink.mod` | 2779 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 358ec27f744b2202… |
| `mod/oak.mod` | 856743 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 7ae044510eae256f… |
| `mod/sensor_play.mod` | 63643 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 5b180c999a34fcd0… |
| `mod/slib.mod` | 9759 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 27dfefc7510c9f75… |
| `mod/update.mod` | 19667 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 66e36c4db1e89f16… |
| `mod/vcoder.mod` | 6539 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | d1793b8a3845d7d7… |
| `mod/video_play.mod` | 62367 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | ca81098dbd9c333f… |
| `mod/willow/willow.mod` | 4591 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 93939c18a2f954e8… |
| `mod/wireless.mod` | 2262799 | ELF 32-bit LSB executable, UCB RISC-V, RVC, do | 3f2ee28f638f6f32… |
