# Copyright 2020 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
#
# Nils Wistoff <nwistoff@iis.ee.ethz.ch>


######################################
# 1. Clock principale (dal Shell)
######################################

# Clock a 100 MHz fornito dal shell/platform (non da pin)
create_clock -name sys_clk -period 10.000 [get_ports clk_in] 
# se `clk_in` non è una porta esterna, questo clock va invece collegato internamente
# esempio:
# create_clock -period 10.000 [get_pins xdma_0/clk] ; se usi l'IP XDMA

######################################
# 2. Reset sincrono
######################################

# Reset globale, di solito gestito via IP o logic interna (es. XDMA reset out)
# ma se definisci un reset esterno:
# set_property PACKAGE_PIN <PIN_ID> [get_ports reset_n]
# set_property IOSTANDARD LVCMOS18 [get_ports reset_n]
# set_property PULLUP true [get_ports reset_n]

# Ignora il reset nei vincoli temporali
# (da attivare se hai davvero un pin reset esterno)
# set_false_path -from [get_ports reset_n]

######################################
# 3. PCIe reference clock (differenziale, se necessario)
######################################

# Solo se stai gestendo i clock PCIe a mano (di solito lo fa la Shell)
# set_property PACKAGE_PIN AB8  [get_ports pcie_refclk_p]
# set_property PACKAGE_PIN AB7  [get_ports pcie_refclk_n]
# set_property IOSTANDARD DIFF_SSTL12 [get_ports {pcie_refclk_p pcie_refclk_n}]

######################################
# 4. QSFP CMAC clock (se usi Ethernet)
######################################

# Clock differenziale da CMAC / GT ref (solo se fai rete 100G)
# set_property PACKAGE_PIN AE12 [get_ports qsfp_clk_p]
# set_property PACKAGE_PIN AE11 [get_ports qsfp_clk_n]
# set_property IOSTANDARD DIFF_SSTL12 [get_ports {qsfp_clk_p qsfp_clk_n}]

######################################
# 5. False paths tipici
######################################

# Reset sync: escludi dalle analisi di timing
# set_false_path -to [get_pins */reset_reg*/D]

# Sincronizzatori a più stadi
# set_false_path -through [get_cells -hier -filter {NAME =~ "*sync_ff*"}]





















# # Not used anymore
# set_property PACKAGE_PIN BJ51 [get_ports clk_100MHz_n]
# set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_100MHz_n]
# set_property PACKAGE_PIN BH51 [get_ports clk_100MHz_p]
# set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_100MHz_p]

# set_property PACKAGE_PIN BP26 [get_ports uart_rx_i_0]
# set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_i_0]
# set_property PACKAGE_PIN BN26 [get_ports uart_tx_o_0]
# set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_o_0]

# # Assume no glitchless mux needs to be clock capable (causes pb on resets)
# set all_in_mux [get_nets -of [ get_pins -filter { DIRECTION == IN } -of [get_cells -hier -filter { ORIG_REF_NAME == tc_clk_mux2 || REF_NAME == tc_clk_mux2 }]]]
# set_property CLOCK_DEDICATED_ROUTE FALSE $all_in_mux
# set_property CLOCK_BUFFER_TYPE NONE $all_in_mux

# # CPU_RESET pushbutton switch
# set_false_path -from [get_port reset] -to [all_registers]
# set_property PACKAGE_PIN BM29      [get_ports reset]
# set_property IOSTANDARD  LVCMOS12  [get_ports reset]

# # Set RTC as false path
# set_false_path -to [get_pins occamy_u280_i/occamy/inst/i_occamy/i_clint/i_sync_edge/i_sync/reg_q_reg[0]/D]

# ################################################################################
# # JTAG
# ################################################################################

# # CDC 2phase clearable of DM: i_cdc_resp/i_cdc_req
# # CONSTRAINT: Requires max_delay of min_period(src_clk_i, dst_clk_i) through the paths async_req, async_ack, async_data.
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_req*"}] 10
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_ack*"}] 10
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_resp/async_data*"}] 10
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_req*"}] 10
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_ack*"}] 10
# set_max_delay -through [get_nets -hier -filter {NAME =~ "*i_cdc_req/async_data*"}] 10

# ################################################################################
# # TIMING GROUPS
# ################################################################################

# # Create timing groups through the FPU to help meet timing

# # ingress and egress same for all pipe configs
# set _xlnx_shared_i0 [get_pins -of [get_cells -hierarchical -filter {ORIG_REF_NAME == fpnew_sdotp_multi || REF_NAME == fpnew_sdotp_multi}] -filter { DIRECTION == "IN" && NAME !~ *out_ready_i && NAME !~ *rst_ni && NAME !~ *clk_i}]
# group_path -default -through $_xlnx_shared_i0
# group_path -name {sdotp_ingress} -through $_xlnx_shared_i0
# set _xlnx_shared_i1 [get_pins -of [get_cells -hierarchical -filter {ORIG_REF_NAME == fpnew_fma_multi || REF_NAME == fpnew_fma_multi}] -filter { DIRECTION == "IN" && NAME !~ *out_ready_i && NAME !~ *rst_ni && NAME !~ *clk_i}]
# group_path -default -through $_xlnx_shared_i1
# group_path -name {fma_ingress} -through $_xlnx_shared_i1
# set _xlnx_shared_i2 [get_pins -of [get_cells -hierarchical -filter {ORIG_REF_NAME == fpnew_sdotp_multi || REF_NAME == fpnew_sdotp_multi}] -filter { DIRECTION == "OUT" && NAME !~ *in_ready_o}]
# group_path -default -through $_xlnx_shared_i2
# group_path -name {sdotp_egress} -through $_xlnx_shared_i2
# set _xlnx_shared_i3 [get_pins -of [get_cells -hierarchical -filter {ORIG_REF_NAME == fpnew_fma_multi || REF_NAME == fpnew_fma_multi}] -filter { DIRECTION == "OUT" && NAME !~ *in_ready_o}]
# group_path -default -through $_xlnx_shared_i3
# group_path -name {fma_egress} -through $_xlnx_shared_i3

# # For 2 DISTRIBUTED pipe registers, registers are placed on input and mid
# # The inside path therefore goes through the registers created in `gen_inside_pipeline[0]`

# # The inside path groups
# set _xlnx_shared_i4 [get_pins -filter {NAME =~ "*/D"} -of [get_cells -hier -filter { NAME =~  "*gen_inside_pipeline[0]*" && PARENT =~  "*fpnew_sdotp_multi*" }]]
# group_path -default -through $_xlnx_shared_i4
# group_path -name {sdotp_fu0} -through $_xlnx_shared_i4
# set _xlnx_shared_i5 [get_pins -filter {NAME =~ "*/D"} -of [get_cells -hier -filter { NAME =~  "*gen_inside_pipeline[0]*" && PARENT =~  "*fpnew_fma_multi*" }]]
# group_path -default -through $_xlnx_shared_i5
# group_path -name {fma_fu0} -through $_xlnx_shared_i5


