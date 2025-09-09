# Porting from VCU128 to U280

The migration from the VCU128 to the U280 involves an **environment setup** followed by three main tasks:

1. Upgrading Vivado from version **2020.2** to **2022.1**
2. Recreating the **Block Diagram** in Vivado 2022.1
3. Running the **Complete implementation**

---

## Environment Setup

This setup is required **every time you open a new terminal window**. It primarily configures global environment variables. For instance, on the **Lagrev server**, follow these steps:

* Create a file named `env_setup.sh` in the main project directory.
* Add the following commands to the file:

```bash
bash -c "export PYTHON='/usr/local/anaconda3-2024.06/bin/python3'"
bash -c "export BENDER='bender-0.27.1'"
bash -c "export CC='gcc-9.2.0'"
bash -c "export CXX='g++-9.2.0'"
export LLVM_BINROOT="/usr/pack/riscv-1.0-kgf/pulp-llvm-0.12.0/bin"
export PATH=/usr/scratch/kneiff/paulsc/opt/verible.old/bin:$PATH
export PATH=/usr/pack/riscv-1.0-kgf/riscv64-gcc-11.2.0/bin:$PATH
```

* Copy the `.venvs` directory into the main project folder.
* Open a terminal and run the following:

```bash
bash
source env_setup.sh
source .venvs/snitch_cluster/bin/activate
```

Before proceeding, clone the GitHub repository and switch to the `ck/fpga2` branch:

```bash
git clone https://github.com/pulp-platform/occamy
cd occamy
git checkout ck/fpga2
```

Since Occamy is too large for the U280 FPGA, reduce the number of clusters to **one** using:

```bash
make -C ../sim CFG_OVERRIDE=cfg/single-cluster.hjson rtl
```

Next, initialize and update all Git submodules:

```bash
git submodule update --init --recursive
```

---

## Upgrading Vivado from 2020.2 to 2022.1

Start by modifying the Vivado version in the **Makefiles** to reference the correct toolchain path. Update the following files:

* `../occamy/target/fpga/Makefile`
* `../occamy/target/fpga/vivado_ips/Makefile`

Change this line:

```make
#VIVADO      ?= vitis-2020.2 vivado
VIVADO      ?= vitis-2022.1 vivado
```

Before launching Vivado, you must also update the **Occamy top-level module**, located at:
`../occamy/target/sim/src/occamy_xilinx.sv`

Add all required output ports for Vivado 2022.1:

```systemverilog
occamy_top i_occamy (
      .bootrom_req_o   (bootrom_axi_lite_req),
      .bootrom_rsp_i   (bootrom_axi_lite_rsp),
      .fll_system_req_o(fll_system_axi_lite_req),
      .fll_system_rsp_i(fll_system_axi_lite_rsp),
      .fll_periph_req_o(fll_periph_axi_lite_req),
      .fll_periph_rsp_i(fll_periph_axi_lite_rsp),
      .fll_hbm2e_req_o (fll_hbm2e_axi_lite_req),
      .fll_hbm2e_rsp_i (fll_hbm2e_axi_lite_rsp),
      .ext_irq_i       (ext_irq_i),
      // Tie-off unused ports
      .pcie_cfg_rsp_i      ('0),
      .hbi_wide_cfg_rsp_i  ('0),
      .hbi_narrow_cfg_rsp_i('0),
      .hbm_cfg_rsp_i       ('0),
      .chip_ctrl_rsp_i     ('0),
      .hbi_wide_req_i      ('0),
      .hbi_wide_rsp_i      ('0),
      .hbi_narrow_req_i    ('0),
      .hbi_narrow_rsp_i    ('0),
      .hbi_wide_cfg_req_o(),
      .hbi_narrow_cfg_req_o(),
      .hbm_cfg_req_o(),
      .pcie_cfg_req_o(),
      .chip_ctrl_req_o(),
      .hbi_wide_rsp_o(),
      .hbi_wide_req_o(),
      .hbi_narrow_rsp_o(),
      .hbi_narrow_req_o(),
      .sram_cfgs_i('0),
      .*
);
```
And we must add the following command in `../occamy/target/fpga/occamy_vcu128.tcl`
```tcl
set_param gui.addressMap 0
```
It is necessary or Vivado will crash trying to open the Block Diagram
Now you can rebuild Occamy as an IP for Vivado 2022.1. Inside the `../occamy/target/fpga/vivado_ips` directory, run:

```bash
make clean
make occamy_xilinx [EXT_JTAG=0] [DEBUG=0]
```

At the end, you may see several error messages — this is expected. Most of them are related to unconnected output pins, which is normal because the module is intended to be used as an external IP.

## Recreating the Entire Block Diagram

To start working with a new FPGA, all relevant names must be updated from the previous platform (VCU128) to the new one (U280). Begin by renaming the following references:

* All filenames in `../occamy/target/fpga`
* `../occamy/target/sim/Makefile : line 571`
* `../occamy/target/fpga/bootrom/src/main.c : line 29`
* `../occamy/target/fpga/.gitignore : line 1`
* `../occamy/target/fpga/Makefile : lines 38, 48, 55, 58, 63, 74`
* `../occamy/target/fpga/occamy_timeout.tsm : line 22`
* `../occamy/target/fpga/occamy_u280_program.tcl : lines 7, 10`
* `../occamy/target/fpga/occamy_u280_procs.tcl : lines 13, 24, 35`
* `../occamy/target/fpga/occamy_u280_flash.tcl : line 18` (**Note: there's a bug here**)
* `../occamy/target/fpga/occamy_u280_flashrun.tcl : lines 17, 21, 76` (**Note: there's a bug at line 21**)

Next, replace all occurrences of `vcu_128` with `u280` in the following files:

* `../occamy/target/fpga/occamy_u280_dump.txt`
* `../occamy/target/fpga/occamy_u280_def_val.txt`
* `../occamy/target/fpga/occamy_u280.tcl`

You can now proceed with the actual changes. Start with the file `../occamy/target/fpga/occamy_u280.tcl`, which is the main script that calls all other TCL scripts and contains Vivado-specific commands. Force the following line:

```tcl
create_project $project ./$project -force -part xcvu37p-fsvh2892-2L-e
```

**Note:** Avoid using `xcu280-fsvh2892-2L-e` as Vivado may not correctly recognize the board.

Uncomment the lines 178, 179, 180, 183, and 184 to enable Implementation and Bitstream generation.

### Reference Materials Used During Porting

To facilitate the porting process, we referred to the following key resources:

* **[Alveo U280 Datasheet](https://www.avnet.com/opasdata/d120001/medias/docus/196/XLX-A-U280-A32G-DEV-G-Datasheet.pdf)**
  This document provides a schematic overview showing that the Satellite Controller selects JTAG via USB Debugger Port and offers a direct UART path to the FPGA.

* **[Board File (XML)](https://www.xilinx.com/bin/public/openDownload?filename=au280_boardfiles_v1_2.zip)**
  When viewed with an [XML viewer](https://jsonformatter.org/xml-viewer), this file reveals the onboard components and their mappings.

* **[Example XDC File](https://www.xilinx.com/bin/public/openDownload?filename=alveo-u280-xdc_20210505.zip)**
  This served as a foundation for building the project's custom XDC file.

### Recreating the Block Diagram

The main modifications are done in the script `../occamy/target/fpga/occamy_u280_bd.tcl`. This is an auto-generated file that defines the Vivado Block Design.

The block diagram was recreated manually in Vivado using the graphical editor. Then, it was exported via:
**File → Export → Export Block Design...**

Key differences after porting from VCU128 to U280 include:

* Removed board-specific implementation settings
* Removed the Ethernet block and associated DMA
* Updated the clock input configuration
* Upgraded PCI Express interface from x4 to x16
* Fixed issues related to reset and clock domains
* Added an Integrated Logic Analyzer (ILA) on RX/TX lines for debugging Occamy

### Editing the XDC File

The final file to edit is `../occamy/target/fpga/occamy_u280.xdc`, where the following updates were made:

#### Default Configuration

```tcl
set_operating_conditions -design_power_budget 160

# Bitstream generation settings
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 63.8 [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design] ;# Optional, may not be reliable under all conditions
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes [current_design]
```

#### Clock and Port Setup

```tcl
# 100 MHz primary differential clock
create_clock -period 10.000 -name Diff_clk_100MHz [get_pins occamy_u280_i/clk_wiz/clk_in1_p]

# 50 MHz logic clock
create_clock -period 20.000 -name sys_clk [get_pins occamy_u280_i/util_ds_buf/IBUF_DS_ODIV2]

# 100 MHz GT transceiver clock
create_clock -period 10.000 -name sys_clk_gt [get_pins occamy_u280_i/util_ds_buf/IBUF_OUT]

# Clock pin assignments
set_property PACKAGE_PIN G31 [get_ports Diff_clk_100MHz_clk_p]
set_property PACKAGE_PIN F31 [get_ports Diff_clk_100MHz_clk_n]
set_property IOSTANDARD LVDS [get_ports Diff_clk_100MHz_clk_p]
set_property IOSTANDARD LVDS [get_ports Diff_clk_100MHz_clk_n]

# PCIe connections (Bank 67 and Bank 75, 1.8V)
set_property PACKAGE_PIN BH26 [get_ports pcie_perstn]
set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn]
```

#### UART Connection to FT4232 (USB Debug Port)

```tcl
set_property PACKAGE_PIN A28 [get_ports uart_rx_i_0]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_i_0]
set_property PACKAGE_PIN B33 [get_ports uart_tx_o_0]
set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_o_0]
```

#### Reset Pin

```tcl
set_property PACKAGE_PIN L30 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]
```

#### DRC Fix for Differential Clock Buffer

To fix a DRC error related to the `IBUFDS_GTE4` buffer, the following constraint pins the instance to a valid `GTYE4_COMMON` location:

```tcl
set_property LOC GTYE4_COMMON_X1Y3 [get_cells {occamy_u280_i/util_ds_buf/U0/USE_IBUFDS_GTE4.GEN_IBUFDS_GTE4[0].IBUFDS_GTE4_I}]
```

#### Other Notes

The constraints for RTC, JTAG, and timing groups have been preserved without modification.

---

With all these changes in place, the porting process to the U280 is now complete.

## Running the Complete Implementation

To launch the full implementation process, navigate to the directory `../occamy/target/fpga` and execute the following commands:

```bash
make clean
make occamy_u280 [DEBUG=0] [EXT_JTAG=0] [NPROC=16]
```

Once the build completes, all relevant output files will be located in:
`../occamy/target/fpga/occamy_u280`

If you wish to open the `occamy_u280` project in Vivado **without re-running the full implementation**, you can do so by launching Vivado manually:

```bash
vitis-2022.1 vivado
```

> Important: Before opening the Block Diagram in Vivado, run the following TCL command to avoid crashes related to the GUI address map:

```tcl
set_param gui.addressMap 0
```

Well done! Your implementation is now ready.

