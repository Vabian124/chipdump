# Target platform reference (F133-B Android Auto head unit)

SoC/board facts for anyone reading the disassembly. Datasheet claims are cross-checked
against evidence found in this dump.

## SoC — Allwinner F133-A/B

- 64-bit **RISC-V** application CPU (XuanTie **C906** class), video-decode platform.
- HW decode H.265/H.264/MPEG-1/2/4/JPEG/VC1 (1080p); JPEG/MJPEG encode.
- Audio: multi ADC/DAC, I2S/PCM/DMIC/OWA.
- **64 MB DDR2 embedded** in-package.
- Peripherals: USB, SDIO, EMAC, TWI, UART, SPI, PWM, GPADC, IR TX/RX.
- Product class: car MP5 / head unit, ad players, digital photo frames, NVR.

## What this dump confirms (evidence)

| Claim | Evidence in dump |
|-------|------------------|
| DDR2 memory | `sys_config.fex` `[dram_para] dram_type = 2` (2 = DDR2), `dram_clk = 528` (MHz) |
| DRAM base `0x40000000` | address literals in `mod/wireless.mod`; used as kernel disasm VMA base |
| 64-bit kernel | `epos.img` = OpenSBI + Melis (RT-Thread); disassembled as **RV64GC** |
| Wi-Fi + Bluetooth | `sys_config.fex` `[wifi_para]` (`wifi_mod_sel=3`) and `[bt_para]` present |
| Bluetooth for phone link | `mod/wireless.mod` strings: `BluetoothEndpoint_routeMessage`, `receive phone bluetooth id`, Android Auto / CarPlay wireless |
| PMU | `[pmu1_para]` AXP-style (TWI addr 0x52) |

The **Bluetooth radio is a separate external chip** (the head unit's BT/Wi-Fi combo);
Melis drives it via UART/SDIO per `[bt_para]`/`[wifi_para]`. Its exact part number is not
plainly stringed in this dump.

## Notes that affect the disassembly artifacts

- **Kernel** `epos.img` is **RV64** — `decompiled/kernel/epos.img.disasm.txt.gz` was produced
  with `-m riscv:rv64 --adjust-vma=0x40000000`, consistent with a 64-bit F133 whose DRAM
  starts at `0x40000000`. No re-run needed.
- **User modules** (`mod/*.mod`, `apps/*.mod`) are packaged as **ELF32 little-endian RISC-V**
  (`RVC, double-float ABI`); `objdump`/`readelf` auto-detect this per file, so those
  disassemblies are correct regardless of the 64-bit core. (Melis ships user modules in an
  ELF32 container even on the RV64 C906 — an observed quirk, called out here so the 32-bit
  ELF class isn't mistaken for an error.)
