# This script was generated automatically by bender.
set ROOT "/scratch2/vborghi/git/occamy_u280"
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/fpga/pad_functional_xilinx.sv \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/fpga/tc_clk_xilinx.sv \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/fpga/tc_sram_xilinx.sv \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/rtl/tc_sram_impl.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/deprecated/pulp_clock_gating_async.sv \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/deprecated/cluster_clk_cells.sv \
    $ROOT/.bender/git/checkouts/tech_cells_generic-a16e668fd6cf9920/src/deprecated/pulp_clk_cells.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/binary_to_gray.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cb_filter_pkg.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cc_onehot.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_reset_ctrlr_pkg.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cf_math_pkg.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/clk_int_div.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/credit_counter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/delta_counter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/ecc_pkg.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/edge_propagator_tx.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/exp_backoff.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/fifo_v3.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/gray_to_binary.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/isochronous_4phase_handshake.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/isochronous_spill_register.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/lfsr.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/lfsr_16bit.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/lfsr_8bit.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/lossy_valid_to_stream.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/mv_filter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/onehot_to_bin.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/plru_tree.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/passthrough_stream_fifo.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/popcount.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/rr_arb_tree.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/rstgen_bypass.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/serial_deglitch.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/shift_reg.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/shift_reg_gated.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/spill_register_flushable.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_demux.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_filter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_fork.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_intf.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_join_dynamic.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_mux.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_throttle.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/sub_per_hash.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/sync.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/sync_wedge.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/unread.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/read.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/addr_decode_dync.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_2phase.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_4phase.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/clk_int_div_static.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/addr_decode.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/addr_decode_napot.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/multiaddr_decode.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cb_filter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_fifo_2phase.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/clk_mux_glitch_free.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/counter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/ecc_decode.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/ecc_encode.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/edge_detect.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/lzc.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/max_counter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/rstgen.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/spill_register.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_delay.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_fifo.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_fork_dynamic.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_join.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_reset_ctrlr.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_fifo_gray.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/fall_through_register.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/id_queue.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_to_mem.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_arbiter_flushable.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_fifo_optimal_wrap.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_register.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_xbar.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_fifo_gray_clearable.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/cdc_2phase_clearable.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/mem_to_banks_detailed.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_arbiter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/stream_omega_net.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/mem_to_banks.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/clock_divider_counter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/clk_div.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/find_first_one.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/generic_LFSR_8bit.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/generic_fifo.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/prioarbiter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/pulp_sync.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/pulp_sync_wedge.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/rrarbiter.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/clock_divider.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/fifo_v2.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/deprecated/fifo_v1.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/edge_propagator_ack.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/edge_propagator.sv \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/src/edge_propagator_rx.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_pkg.sv \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_intf.sv \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_err_slv.sv \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_regs.sv \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_cdc.sv \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/src/apb_demux.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_pkg.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_intf.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_atop_filter.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_burst_splitter.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_bus_compare.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_cdc_dst.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_cdc_src.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_cut.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_delayer.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_demux_simple.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_dw_downsizer.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_dw_upsizer.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_fifo.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_id_remap.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_id_prepend.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_isolate.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_join.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_demux.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_dw_converter.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_from_mem.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_join.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_lfsr.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_mailbox.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_mux.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_regs.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_to_apb.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_to_axi.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_modify_address.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_mux.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_rw_join.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_rw_split.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_serializer.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_slave_compare.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_throttle.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_detailed_mem.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_cdc.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_demux.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_err_slv.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_dw_converter.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_from_mem.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_id_serialize.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lfsr.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_multicut.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_axi_lite.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_mem.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_zero_mem.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_interleaved_xbar.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_iw_converter.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_lite_xbar.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_xbar_unmuxed.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_mem_banked.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_mem_interleaved.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_to_mem_split.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_xbar.sv \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/src/axi_xp.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/defs_div_sqrt_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/iteration_div_sqrt_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/control_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/norm_div_sqrt_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/preprocess_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/nrbd_nrsc_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/div_sqrt_top_mvp.sv \
    $ROOT/.bender/git/checkouts/fpu_div_sqrt_mvp-dda3f2b23b1e3cf9/hdl/div_sqrt_mvp_wrapper.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_res_tbl.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_amos_alu.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_amos.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_lrsc.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_atomics.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_lrsc_wrap.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_amos_wrap.sv \
    $ROOT/.bender/git/checkouts/axi_riscv_atomics-9860e6c21c013eaa/src/axi_riscv_atomics_wrap.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_pkg.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_cast_multi.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_classifier.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_divsqrt_multi.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_fma.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_fma_multi.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_sdotp_multi.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_sdotp_multi_wrapper.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_noncomp.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_opgroup_block.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_opgroup_fmt_slice.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_opgroup_multifmt_slice.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_rounding.sv \
    $ROOT/.bender/git/checkouts/fpnew-a92b415c67bdc0d0/src/fpnew_top.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_intf.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/vendor/lowrisc_opentitan/src/prim_subreg_arb.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/vendor/lowrisc_opentitan/src/prim_subreg_ext.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/apb_to_reg.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/axi_lite_to_reg.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/axi_to_reg_v2.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/periph_to_reg.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_cdc.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_cut.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_demux.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_err_slv.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_filter_empty_writes.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_mux.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_to_apb.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_to_mem.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_to_tlul.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_to_axi.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/reg_uniform.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/vendor/lowrisc_opentitan/src/prim_subreg_shadow.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/vendor/lowrisc_opentitan/src/prim_subreg.sv \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/src/deprecated/axi_to_reg.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_pkg.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/debug_rom/debug_rom.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/debug_rom/debug_rom_one_scratch.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_csrs.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_mem.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dmi_cdc.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dmi_bscane_tap.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_sba.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_top.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dmi_jtag.sv \
    $ROOT/.bender/git/checkouts/riscv-dbg-0edb7716f6e62c05/src/dm_obi_top.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/apb_timer-7f0a4fb67c0644d7/src/timer.sv \
    $ROOT/.bender/git/checkouts/apb_timer-7f0a4fb67c0644d7/src/apb_timer.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_clock_div.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_counter.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_edge_detect.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_fifo.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_input_filter.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_input_sync.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/slib_mv_filter.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/uart_baudgen.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/uart_interrupt.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/uart_receiver.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/uart_transmitter.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/apb_uart.sv \
    $ROOT/.bender/git/checkouts/apb_uart-3faf55e082d60fde/src/apb_uart_wrap.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb_l1_chan.sv \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb_reg_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb_reg_top.sv \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb_l1.sv \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb_noreg.sv \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/src/axi_tlb.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/clint-b5738b1472f66607/src/clint_reg_pkg.sv \
    $ROOT/.bender/git/checkouts/clint-b5738b1472f66607/src/clint_reg_top.sv \
    $ROOT/.bender/git/checkouts/clint-b5738b1472f66607/src/clint.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/cv64a6_imafdc_sv39_config_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/riscv_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/ariane_dm_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/ariane_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/mmu_sv39/tlb.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/mmu_sv39/mmu.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/mmu_sv39/ptw.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/ariane_rvfi_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/ariane_axi_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/wt_cache_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/std_cache_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/axi_intf.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/core/include/cvxif_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cvxif_example/include/cvxif_instr_pkg.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cvxif_fu.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cvxif_example/cvxif_example_coprocessor.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cvxif_example/instr_decoder.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/ariane.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cva6.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/alu.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/fpu_wrap.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/branch_unit.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/compressed_decoder.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/controller.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/csr_buffer.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/csr_regfile.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/decoder.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/ex_stage.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/instr_realign.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/id_stage.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/issue_read_operands.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/issue_stage.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/load_unit.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/load_store_unit.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/lsu_bypass.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/mult.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/multiplier.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/serdiv.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/perf_counters.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/ariane_regfile_ff.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/ariane_regfile_fpga.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/re_name.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/scoreboard.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/store_buffer.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/amo_buffer.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/store_unit.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/commit_stage.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/axi_shim.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/btb.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/bht.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/ras.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/instr_scan.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/instr_queue.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/frontend/frontend.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_dcache_ctrl.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_dcache_mem.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_dcache_missunit.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_dcache_wbuffer.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_dcache.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/cva6_icache.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_cache_subsystem.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_axi_adapter.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/tag_cmp.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/cache_ctrl.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/amo_alu.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/wt_l15_adapter.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/corev_apu/tb/axi_adapter.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/miss_handler.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/std_nbdcache.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/cva6_icache_axi_wrapper.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/cache_subsystem/std_cache_subsystem.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/pmp/src/pmp.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/core/pmp/src/pmp_entry.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/common/local/util/sram.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/openhwgroup_cva6/common/local/util/tc_sram_fpga_wrapper.sv \
    $ROOT/hw/vendor/openhwgroup_cva6/vendor/pulp-platform/fpga-support/rtl/SyncSpRamBeNx64.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/prim_pulp_platform/prim_flop_2sync.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_util_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_sync_reqack.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_sync_reqack_data.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_pulse_sync.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_packer_fifo.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_fifo_sync.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_filter_ctr.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_intr_hw.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/prim/rtl/prim_fifo_async.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/gpio/rtl/gpio_reg_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/i2c/rtl/i2c_reg_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_reg_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/gpio/rtl/gpio_reg_top.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/i2c/rtl/i2c_reg_top.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_reg_top.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/i2c/rtl/i2c_fsm.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/rv_plic/rtl/rv_plic_gateway.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_byte_merge.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_byte_select.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_cmd_pkg.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_command_cdc.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_fsm.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_window.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_data_cdc.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_shift_register.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/i2c/rtl/i2c_core.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/rv_plic/rtl/rv_plic_target.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host_core.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/gpio/rtl/gpio.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/i2c/rtl/i2c.sv \
    $ROOT/hw/vendor/pulp_platform_opentitan_peripherals/src/spi_host/rtl/spi_host.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/mem_to_axi_lite.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/idma_reg64_frontend_reg_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/idma_tf_id_gen.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/dma/axi_dma_data_path.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/axi_interleaved_xbar.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/axi_zero_mem.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/idma_reg64_frontend_reg_top.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/idma_reg64_frontend.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/dma/axi_dma_data_mover.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/dma/axi_dma_burst_reshaper.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/future/src/dma/axi_dma_backend.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_intf.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/axi_to_reqrsp.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_cut.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_demux.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_iso.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_mux.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/src/reqrsp_to_axi.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/mem_interface/src/mem_wide_narrow_mux.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/mem_interface/src/mem_interface.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/src/tcdm_interface.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/src/axi_to_tcdm.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/src/reqrsp_to_tcdm.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/src/tcdm_mux.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch_pma_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/riscv_instr.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch_regfile_ff.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch_lsu.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch_l0_tlb.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/src/snitch.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_vm/src/snitch_ptw.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_dma/src/axi_dma_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_dma/src/axi_dma_error_handler.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_dma/src/axi_dma_perf_counters.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_dma/src/axi_dma_twod_ext.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_dma/src/axi_dma_tc_snitch_fe.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_l0.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_refill.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_lfsr.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_lookup.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache_handler.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_icache/src/snitch_icache.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ipu/src/snitch_ipu_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ipu/src/snitch_ipu_alu.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ipu/src/snitch_int_ss.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_switch.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_credit_counter.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_indirector.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_intersector.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_addr_gen.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/src/snitch_ssr_streamer.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_amo_shim.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_cluster_peripheral/snitch_cluster_peripheral_reg_pkg.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_cluster_peripheral/snitch_cluster_peripheral_reg_top.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_cluster_peripheral/snitch_cluster_peripheral.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_fpu.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_sequencer.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_tcdm_interconnect.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_barrier.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_fp_ss.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_shared_muldiv.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_cc.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_clkdiv2.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_hive.sv \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_cluster/src/snitch_cluster.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/future/reg_to_apb.sv \
    $ROOT/hw/snitch_read_only_cache/src/snitch_axi_to_cache.sv \
    $ROOT/hw/snitch_read_only_cache/src/snitch_read_only_cache.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/spm_interface/src/spm_interface.sv \
    $ROOT/hw/spm_interface/src/spm_rmw_adapter.sv \
    $ROOT/hw/spm_interface/src/spm_1p_adv.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/target/sim/src/soc_ctrl/occamy_soc_reg_pkg.sv \
    $ROOT/target/sim/src/soc_ctrl/occamy_soc_reg_top.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/hw/occamy/soc_ctrl/occamy_soc_ctrl.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/target/sim/src/quadrant_s1_ctrl/occamy_quadrant_s1_reg_pkg.sv \
    $ROOT/target/sim/src/quadrant_s1_ctrl/occamy_quadrant_s1_reg_top.sv \
    $ROOT/target/sim/src/hbm_xbar_ctrl/occamy_hbm_xbar_reg_pkg.sv \
    $ROOT/target/sim/src/hbm_xbar_ctrl/occamy_hbm_xbar_reg_top.sv \
    $ROOT/target/sim/src/rv_plic/rv_plic_reg_pkg.sv \
    $ROOT/target/sim/src/rv_plic/rv_plic_reg_top.sv \
    $ROOT/target/sim/src/rv_plic/rv_plic.sv \
    $ROOT/target/sim/src/clint/clint_reg_pkg.sv \
    $ROOT/target/sim/src/clint/clint_reg_top.sv \
    $ROOT/target/sim/src/clint/clint.sv \
    $ROOT/target/sim/src/occamy_cluster_wrapper.sv \
    $ROOT/target/sim/src/occamy_pkg.sv \
    $ROOT/target/sim/src/occamy_quadrant_s1_ctrl.sv \
    $ROOT/target/sim/src/occamy_quadrant_s1.sv \
    $ROOT/target/sim/src/occamy_soc.sv \
    $ROOT/target/sim/src/occamy_top.sv \
    $ROOT/target/sim/src/occamy_cva6.sv \
]
add_files -norecurse -fileset [current_fileset] [list \
    $ROOT/target/sim/src/occamy_xilinx.sv \
]

set_property include_dirs [list \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/include \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/include \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/include \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/mem_interface/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/include \
    $ROOT/hw/occamy \
    $ROOT/hw/spm_interface/include \
    $ROOT/hw/vendor/openhwgroup_cva6/common/local/util \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/include \
] [current_fileset]

set_property include_dirs [list \
    $ROOT/.bender/git/checkouts/apb-967c1a20a8f82c97/include \
    $ROOT/.bender/git/checkouts/axi-7d2d728b16217226/include \
    $ROOT/.bender/git/checkouts/common_cells-2daae953864f41bd/include \
    $ROOT/.bender/git/checkouts/register_interface-126aa152b770f2ca/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/mem_interface/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/reqrsp_interface/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/snitch_ssr/include \
    $ROOT/.bender/git/checkouts/snitch_cluster-85bc3373558d290b/hw/tcdm_interface/include \
    $ROOT/hw/occamy \
    $ROOT/hw/spm_interface/include \
    $ROOT/hw/vendor/openhwgroup_cva6/common/local/util \
    $ROOT/hw/vendor/pulp_platform_axi_tlb/include \
] [current_fileset -simset]

set_property verilog_define [list \
    WB_DCACHE=1 \
    SNITCH_ENABLE_PERF \
    TARGET_BSCANE \
    TARGET_CV64A6_IMAFDC_SV39 \
    TARGET_FPGA \
    TARGET_OCCAMY \
    TARGET_SYNTHESIS \
    TARGET_VIVADO \
    TARGET_XILINX \
] [current_fileset]

set_property verilog_define [list \
    WB_DCACHE=1 \
    SNITCH_ENABLE_PERF \
    TARGET_BSCANE \
    TARGET_CV64A6_IMAFDC_SV39 \
    TARGET_FPGA \
    TARGET_OCCAMY \
    TARGET_SYNTHESIS \
    TARGET_VIVADO \
    TARGET_XILINX \
] [current_fileset -simset]

