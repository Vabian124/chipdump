# GPIO Pin Mappings

## `card0_boot_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_d1` | **PF00** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `sdc_d0` | **PF01** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `sdc_clk` | **PF02** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `sdc_cmd` | **PF03** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `sdc_d3` | **PF04** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `sdc_d2` | **PF05** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `card2_boot_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_clk` | **PF25** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_cmd` | **PF24** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d0` | **PF16** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d1` | **PF17** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d2` | **PF18** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d3` | **PF19** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d4` | **PF20** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d5` | **PF21** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d6` | **PF22** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_d7` | **PF23** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_emmc_rst` | **PF31** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
| `sdc_ds` | **PF27** | `2` (Alt Function) | `1` (Pull-Up) | `3` (Level 3 / 40mA) | `default` |
## `twi_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `twi_scl` | **PE12** | `2` (Alt Function) | `default` | `default` | `default` |
| `twi_sda` | **PE13** | `2` (Alt Function) | `default` | `default` | `default` |
## `uart_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `uart_debug_tx` | **PB02** | `7` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `jtag_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `jtag_ms` | **PE04** | `7` (Alt Function) | `default` | `default` | `default` |
| `jtag_ck` | **PE07** | `7` (Alt Function) | `default` | `default` | `default` |
| `jtag_do` | **PE06** | `7` (Alt Function) | `default` | `default` | `default` |
| `jtag_di` | **PE05** | `7` (Alt Function) | `default` | `default` | `default` |
## `gmac0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `gmac_rxd3` | **PA00** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_rxd2` | **PA01** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_rxd1` | **PA02** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_rxd0` | **PA03** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_rxck` | **PA04** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_rxctl` | **PA05** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_clkin` | **PA06** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txd3` | **PA07** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txd2` | **PA08** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txd1` | **PA09** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txd0` | **PA10** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txck` | **PA11** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_txctl` | **PA12** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_mdc` | **PA13** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_mdio` | **PA14** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga1` | **PA15** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga2` | **PA16** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga3` | **PA17** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga4` | **PA18** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga5` | **PA19** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga7` | **PA20** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga8` | **PA21** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga9` | **PA22** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga10` | **PA23** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga11` | **PA24** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga12` | **PA25** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga13` | **PA26** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga14` | **PA27** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga15` | **PA28** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga16` | **PA29** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga17` | **PA30** | `2` (Alt Function) | `default` | `default` | `default` |
| `gmac_fpga18` | **PA31** | `2` (Alt Function) | `default` | `default` | `default` |
## `twi0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `twi0_scl` | **PB03** | `4` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `twi0_sda` | **PB02** | `4` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `twi1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `twi1_scl` | **PG14** | `4` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `twi1_sda` | **PB04** | `4` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `twi2`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `twi2_scl` | **PE12** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `twi2_sda` | **PE13** | `2` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `twi3`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `twi3_scl` | **PG10** | `3` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `twi3_sda` | **PG11** | `3` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `uart1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `uart_tx` | **PG12** | `7` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `uart_rx` | **PG13** | `7` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `uart3`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `uart_tx` | **PB06** | `7` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
| `uart_rx` | **PB07** | `7` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `spi0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `spi0_sclk` | **PC02** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_cs` | **PC03** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `spi0_mosi` | **PC04** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_miso` | **PC05** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_wp` | **PC06** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_hold` | **PC07** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
## `spinor_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `spi_sclk` | **PC02** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi_cs` | **PC03** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `spi0_mosi` | **PC04** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_miso` | **PC05** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_wp` | **PC06** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
| `spi0_hold` | **PC07** | `2` (Alt Function) | `0` (Float) | `2` (Level 2 / 30mA) | `default` |
## `ctp_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `ctp_int_port` | **PG07** | `14` (Alt Function) | `2` (Pull-Down) | `default` | `default` |
| `ctp_wakeup` | **PG08** | `1` (GPIO Output) | `default` | `default` | `1` (High Output) |
## `sdc0det_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `detect_pin` | **PF06** | `0` (GPIO Input) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
## `sdc0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc0_d1` | **PF00** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc0_d0` | **PF01** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc0_clk` | **PF02** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc0_cmd` | **PF03** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc0_d3` | **PF04** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc0_d2` | **PF05** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
## `sdc1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc1_clk` | **PG00** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc1_cmd` | **PG01** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc1_d0` | **PG02** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc1_d1` | **PG03** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc1_d2` | **PG04** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `sdc1_d3` | **PG05** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
## `motor_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `motor_shake` | **POWER03** | `1` (GPIO Output) | `default` | `default` | `1` (High Output) |
## `nand0_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `nand0_we` | **PC00** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_ale` | **PC01** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_cle` | **PC02** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_ce0` | **PC03** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `nand0_nre` | **PC04** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_rb0` | **PC05** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d0` | **PC06** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d1` | **PC07** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d2` | **PC08** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d3` | **PC09** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d4` | **PC10** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d5` | **PC11** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d6` | **PC12** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_d7` | **PC13** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_ndqs` | **PC14** | `2` (Alt Function) | `0` (Float) | `1` (Level 1 / 20mA) | `default` |
| `nand0_ce1` | **PC15** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
| `nand0_rb1` | **PC16** | `2` (Alt Function) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `default` |
## `hdmi`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `ddc_scl` | **PH13** | `3` (Alt Function) | `default` | `1` (Level 1 / 20mA) | `default` |
| `ddc_sda` | **PH14** | `3` (Alt Function) | `default` | `1` (Level 1 / 20mA) | `default` |
| `cec_io` | **PH15** | `3` (Alt Function) | `default` | `1` (Level 1 / 20mA) | `default` |
| `ddc_io_ctrl` | **PH02** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `power_en_io` | **PL04** | `1` (GPIO Output) | `default` | `default` | `1` (High Output) |
## `lcd0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `lcd_bl_en` | **PG15** | `1` (GPIO Output) | `0` (Float) | `default` | `1` (High Output) |
| `lcd_power` | **POWER02** | `1` (GPIO Output) | `0` (Float) | `default` | `1` (High Output) |
| `lcd_gpio_0` | **PD00** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_1` | **PD01** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_2` | **PD02** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_3` | **PD03** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_4` | **PD04** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_5` | **PD05** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_6` | **PD06** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_7` | **PD07** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_8` | **PD08** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `lcd_gpio_9` | **PD09** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
## `vdpo0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `vo_d0` | **PD01** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d1` | **PD02** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d2` | **PD03** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d3` | **PD04** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d4` | **PD05** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d5` | **PD06** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d6` | **PD07** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d7` | **PD08** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d8` | **PD10** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d9` | **PD11** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d10` | **PD12** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d11` | **PD13** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d12` | **PD14** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d13` | **PD15** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d14` | **PD16** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d15` | **PD17** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_clk` | **PD18** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_de` | **PD19** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_hs` | **PD20** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_vs` | **PD21** | `4` (Alt Function) | `0` (Float) | `default` | `default` |
## `vdpo0_suspend`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `vo_d0` | **PD01** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d1` | **PD02** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d2` | **PD03** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d3` | **PD04** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d4` | **PD05** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d5` | **PD06** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d6` | **PD07** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d7` | **PD08** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d8` | **PD10** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d9` | **PD11** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d10` | **PD12** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d11` | **PD13** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d12` | **PD14** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d13` | **PD15** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d14` | **PD16** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_d15` | **PD17** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_clk` | **PD18** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_de` | **PD19** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_hs` | **PD20** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
| `vo_vs` | **PD21** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
## `pwm0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_pin` | **PD16** | `5` (Alt Function) | `default` | `default` | `default` |
## `pwm1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PG06** | `5` (Alt Function) | `default` | `default` | `default` |
## `pwm2`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_pin` | **PE08** | `4` (Alt Function) | `default` | `default` | `default` |
## `pwm3`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PE09** | `4` (Alt Function) | `default` | `default` | `default` |
## `pwm4`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_pin` | **PD05** | `3` (Alt Function) | `default` | `default` | `default` |
## `pwm5`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PD06** | `3` (Alt Function) | `default` | `default` | `default` |
## `pwm6`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm6_pin` | **PD07** | `3` (Alt Function) | `default` | `default` | `default` |
## `pwm7`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PD22** | `5` (Alt Function) | `0` (Float) | `default` | `default` |
## `spwm0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PL10** | `2` (Alt Function) | `0` (Float) | `default` | `default` |
## `spwm0_suspend`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `pwm_positive` | **PL10** | `7` (Alt Function) | `0` (Float) | `default` | `default` |
## `vind0/csi0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `csi0_pck` | **PE02** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_hsync` | **PE00** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_vsync` | **PE01** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d0` | **PE04** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d1` | **PE05** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d2` | **PE06** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d3` | **PE07** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d4` | **PE08** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d5` | **PE09** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d6` | **PE10** | `2` (Alt Function) | `default` | `default` | `default` |
| `csi0_d7` | **PE11** | `2` (Alt Function) | `default` | `default` | `default` |
## `vind0/sensor0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sensor0_reset` | **PG09** | `1` (GPIO Output) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `0` (Low Output) |
| `sensor0_pwdn` | **PG01** | `0` (GPIO Input) | `0` (Float) | `1` (Level 1 / 20mA) | `0` (Low Output) |
## `vind0/sensor1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sensor1_reset` | **PE14** | `0` (GPIO Input) | `0` (Float) | `1` (Level 1 / 20mA) | `0` (Low Output) |
| `sensor1_pwdn` | **PE15** | `0` (GPIO Input) | `0` (Float) | `1` (Level 1 / 20mA) | `0` (Low Output) |
## `mmc0_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_d1` | **PF00** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d0` | **PF01** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_clk` | **PF02** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_cmd` | **PF03** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d3` | **PF04** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d2` | **PF05** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `mmc1_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_clk` | **PG00** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_cmd` | **PG01** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d0` | **PG02** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d1` | **PG03** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d2` | **PG04** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d3` | **PG05** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `mmc2_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_clk` | **PC05** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_cmd` | **PC06** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d0` | **PC08** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d1` | **PC09** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d2` | **PC10** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d3` | **PC11** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d4` | **PC12** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d5` | **PC13** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d6` | **PC14** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d7` | **PC15** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `emmc_rst` | **PC16** | `3` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `mmc3_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `sdc_clk` | **PA10** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_cmd` | **PA09** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d0` | **PA11** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d1` | **PA12** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d2` | **PA13** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `sdc_d3` | **PA14** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `usbc1`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `usb_drv_vbus_gpio` | **PB03** | `1` (GPIO Output) | `0` (Float) | `default` | `0` (Low Output) |
## `gsensor_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `gsensor_int1` | **PA09** | `6` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `3g_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `bb_vbat` | **PL03** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_host_wake` | **PM00** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_on` | **PM01** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_pwr_on` | **PM03** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_wake` | **PM04** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_rf_dis` | **PM05** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
| `bb_rst` | **PM06** | `1` (GPIO Output) | `default` | `default` | `0` (Low Output) |
## `gy_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `gy_int1` | **PA10** | `6` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `ls_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `ls_int` | **PA12** | `6` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `compass_para`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `compass_int` | **PA11** | `6` (Alt Function) | `1` (Pull-Up) | `default` | `default` |
## `codec`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `gpio-spk` | **PH09** | `1` (GPIO Output) | `1` (Pull-Up) | `1` (Level 1 / 20mA) | `1` (High Output) |
## `s_uart0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `s_uart_tx` | **PL02** | `2` (Alt Function) | `default` | `default` | `default` |
| `s_uart_rx` | **PL03** | `2` (Alt Function) | `default` | `default` | `default` |
## `s_rsb0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `s_rsb_sck` | **PL00** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `s_rsb_sda` | **PL01** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `s_jtag0`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `s_jtag_tms` | **PL04** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `s_jtag_tck` | **PL05** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `s_jtag_tdo` | **PL06** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `s_jtag_tdi` | **PL07** | `2` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `Vdevice`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `Vdevice_0` | **PC00** | `5` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
| `Vdevice_1` | **PC01** | `5` (Alt Function) | `1` (Pull-Up) | `2` (Level 2 / 30mA) | `default` |
## `adc_power`
| Key Name | Pin | Mux Mode | Pull Resistor | Drive Strength | Initial Output |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `power_det_io` | **PB02** | `0` (GPIO Input) | `0` (Float) | `default` | `default` |
