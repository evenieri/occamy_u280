# Copyright 2020 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
#
#

# Power Constraint to warn User if Desing will possibly be over cards power limit, this assume the 2x4 PCIe AUX power is connectd to the board.
#
set_operating_conditions -design_power_budget 160
#
# Bitstream generation
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable [current_design]               ;# Golden image is the fall back image if  new bitstream is corrupted.
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 63.8          [current_design] 
#set_property BITSTREAM.CONFIG.CONFIGRATE 85.0          [current_design]                 ;# Customer can try but may not be reliable over all conditions.
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]                    ;# Choices are pullnone, pulldown, and pullup.
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes [current_design]
#
# Create Clock Constraints
#

# Clock Principale a 100 MHz
create_clock -period 10.000 -name Diff_clk_100MHz [get_pins occamy_u280_i/clk_wiz/clk_in1_p]

# Clock logica a 50 MHz
create_clock -period 20.000 -name sys_clk [get_pins occamy_u280_i/util_ds_buf/IBUF_DS_ODIV2]

# Clock transceiver GT a 100 MHz
create_clock -period 10.000 -name sys_clk_gt [get_pins occamy_u280_i/util_ds_buf/IBUF_OUT]

# Clock Pin Setup
set_property PACKAGE_PIN G31 [get_ports Diff_clk_100MHz_clk_p]
set_property PACKAGE_PIN F31 [get_ports Diff_clk_100MHz_clk_n]
set_property IOSTANDARD LVDS [get_ports Diff_clk_100MHz_clk_p]
set_property IOSTANDARD LVDS [get_ports Diff_clk_100MHz_clk_n]

#  PCIe Connections   Bank 67 and Bank 75 (1.8V bank)
set_property PACKAGE_PIN BH26 [get_ports pcie_perstn]
set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn]

# Assegna il LOC al buffer differenziale PCIe
set_property LOC GTYE4_COMMON_X1Y3 [get_cells {occamy_u280_i/util_ds_buf/U0/USE_IBUFDS_GTE4.GEN_IBUFDS_GTE4[0].IBUFDS_GTE4_I}]

# Bank 75  FPGA UART Interface to FTDI FT4232 Port 3 of 4 (User selectable Baud)
#    USB_UART_RX  Input from FT4232 UART to FPGA
#    USB_UART_TX  Output from FPGA to FT4232 UART
#
set_property PACKAGE_PIN A28              [get_ports uart_rx_i_0]                        ;# Bank  75 VCCO - VCC1V8   - IO_L24N_T3U_N11_75
set_property IOSTANDARD  LVCMOS18         [get_ports uart_rx_i_0]                        ;# Bank  75 VCCO - VCC1V8   - IO_L24N_T3U_N11_75
set_property PACKAGE_PIN B33              [get_ports uart_tx_o_0]                        ;# Bank  75 VCCO - VCC1V8   - IO_T3U_N12_75
set_property IOSTANDARD  LVCMOS18         [get_ports uart_tx_o_0]                        ;# Bank  75 VCCO - VCC1V8   - IO_T3U_N12_75
#

# Bank 75 Ultrascale+ Device to Satellite Controller CMS UART Interface (115200, No parity, 8 bits, 1 stop bit)
#    FPGA_RXD_MSP  Input from Satellite Controller UART to Ultrascale+ Device
#    FPGA_TXD_MSP  Output from Ultrascale+ Device to Satellite Controller UART
#    This interface is used for the CMS command path, refer to https://www.xilinx.com/products/intellectual-property/cms-subsystem.html and Xilinx PG348
#
#set_property PACKAGE_PIN D29              [get_ports uart_tx_o_0]                       ;# Bank  75 VCCO - VCC1V8   - IO_L18N_T2U_N11_AD2N_75
#set_property IOSTANDARD  LVCMOS18         [get_ports uart_tx_o_0]                       ;# Bank  75 VCCO - VCC1V8   - IO_L18N_T2U_N11_AD2N_75
#set_property PACKAGE_PIN E28              [get_ports uart_rx_i_0]                       ;# Bank  75 VCCO - VCC1V8   - IO_L18P_T2U_N10_AD2P_75
#set_property IOSTANDARD  LVCMOS18         [get_ports uart_rx_i_0]                       ;# Bank  75 VCCO - VCC1V8   - IO_L18P_T2U_N10_AD2P_75



#
#  CPU_RESET_FPGA Connects to SW1 push button On the top edge of the PCB Assembly, also connects to Satellite Contoller
#                 Desinged to be a active low reset input to the FPGA.
#
set_property PACKAGE_PIN L30              [get_ports reset]                     ;# Bank  75 VCCO - VCC1V8   - IO_L2N_T0L_N3_75
set_property IOSTANDARD  LVCMOS18         [get_ports reset]                     ;# Bank  75 VCCO - VCC1V8   - IO_L2N_T0L_N3_75
#
############################################
#
# Set RTC as false path
set_false_path -to [get_pins {occamy_u280_i/occamy/inst/i_occamy/i_clint/i_sync_edge/i_sync/reg_q_reg[0]/D}]

################################################################################
# JTAG
################################################################################

# CDC 2phase clearable of DM: i_cdc_resp/i_cdc_req
# CONSTRAINT: Requires max_delay of min_period(src_clk_i, dst_clk_i) through the paths async_req, async_ack, async_data.
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_req*"}] 10.000
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_ack*"}] 10.000
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_data*"}] 10.000
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_req*"}] 10.000
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_ack*"}] 10.000
set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_data*"}] 10.000

################################################################################
# TIMING GROUPS
################################################################################

# Create timing groups through the FPU to help meet timing

# ingress and egress same for all pipe configs
group_path -name sdotp_ingress -through [get_pins -of [get_cells -hier -filter {ORIG_REF_NAME == fpnew_sdotp_multi || REF_NAME == fpnew_sdotp_multi}] -filter { DIRECTION == IN && NAME !~ *out_ready_i && NAME !~ *rst_ni && NAME !~ *clk_i}]
group_path -name fma_ingress   -through [get_pins -of [get_cells -hier -filter {ORIG_REF_NAME == fpnew_fma_multi || REF_NAME == fpnew_fma_multi}] -filter { DIRECTION == IN && NAME !~ *out_ready_i && NAME !~ *rst_ni && NAME !~ *clk_i}]
group_path -name sdotp_egress  -through [get_pins -of [get_cells -hier -filter {ORIG_REF_NAME == fpnew_sdotp_multi || REF_NAME == fpnew_sdotp_multi}] -filter { DIRECTION == OUT && NAME !~ *in_ready_o}]
group_path -name fma_egress    -through [get_pins -of [get_cells -hier -filter {ORIG_REF_NAME == fpnew_fma_multi || REF_NAME == fpnew_fma_multi}] -filter { DIRECTION == OUT && NAME !~ *in_ready_o}]
