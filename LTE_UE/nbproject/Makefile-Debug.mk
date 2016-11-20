#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=g++
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/PROC/Process.o \
	${OBJECTDIR}/PROC/channel_sim_proc.o \
	${OBJECTDIR}/ad9361/platform.o \
	${OBJECTDIR}/channel_sim.o \
	${OBJECTDIR}/common/utils/collection/hashtable/hashtable.o \
	${OBJECTDIR}/common/utils/collection/hashtable/obj_hashtable.o \
	${OBJECTDIR}/common/utils/itti/backtrace.o \
	${OBJECTDIR}/common/utils/itti/intertask_interface.o \
	${OBJECTDIR}/common/utils/itti/intertask_interface_dump.o \
	${OBJECTDIR}/common/utils/itti/memory_pools.o \
	${OBJECTDIR}/common/utils/itti/signals.o \
	${OBJECTDIR}/common/utils/itti/timer.o \
	${OBJECTDIR}/common/utils/itti_analyzer/itti_analyzer.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/buffers.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/file.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/socket.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/array_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_value_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/field_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/file_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/fundamental_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/pointer_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/reference_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/struct_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/typedef_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/types.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/union_type.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libparser/xml_parse.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libresolver/locate_root.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libresolver/resolvers.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_callbacks.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_filters.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_interface.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_main_screen.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_menu_bar.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notebook.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notif_dlg.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notifications.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_signal_dissect_view.o \
	${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_tree_view.o \
	${OBJECTDIR}/common/utils/msc/msc.o \
	${OBJECTDIR}/cor_SF_sim.o \
	${OBJECTDIR}/event_handler.o \
	${OBJECTDIR}/init_lte.o \
	${OBJECTDIR}/oaisim.o \
	${OBJECTDIR}/oaisim_config.o \
	${OBJECTDIR}/oaisim_functions.o \
	${OBJECTDIR}/oaisim_pad.o \
	${OBJECTDIR}/openair1/MAC_INTERFACE/init.o \
	${OBJECTDIR}/openair1/MAC_INTERFACE/register.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte_sse.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_16bit.o \
	${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_8bit.o \
	${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/ltetest.o \
	${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/pdcch_test.o \
	${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/viterbi_test.o \
	${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte.o \
	${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte_lte.o \
	${OBJECTDIR}/openair1/PHY/CODING/crc_byte.o \
	${OBJECTDIR}/openair1/PHY/CODING/lte_rate_matching.o \
	${OBJECTDIR}/openair1/PHY/CODING/lte_segmentation.o \
	${OBJECTDIR}/openair1/PHY/CODING/lte_tf.o \
	${OBJECTDIR}/openair1/PHY/CODING/rate_matching.o \
	${OBJECTDIR}/openair1/PHY/CODING/viterbi.o \
	${OBJECTDIR}/openair1/PHY/CODING/viterbi_lte.o \
	${OBJECTDIR}/openair1/PHY/INIT/init_top.o \
	${OBJECTDIR}/openair1/PHY/INIT/lte_init.o \
	${OBJECTDIR}/openair1/PHY/INIT/lte_parms.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/adjust_gain.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_domain_filters.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_equalization.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_adjust_sync.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation_emos.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_mbsfn_channel_estimation.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_eNB_measurements.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_est_freq_offset.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_time.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ue_measurements.o \
	${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ul_channel_estimation.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/gen_mod_table.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_cell_spec.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_mbsfn.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_uespec.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold_mbsfn.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul_ref.o \
	${OBJECTDIR}/openair1/PHY/LTE_REFSIG/primary_synch.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci_tools.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_coding.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_decoding.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_demodulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_llr_computation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_modulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_scrambling.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/drs_modulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/group_hopping.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/initial_sync.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/lte_mcs.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pbch.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pcfich.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/phich.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots_mbsfn.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pmch.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/power_control.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/prach.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/print_stats.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pss.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pucch.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/rar_tools.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/srs_modulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss_gen.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/uci_tools.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_coding.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_decoding.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_demodulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_modulation.o \
	${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/vrb_maps.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/gen_7_5_kHz.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/ofdm_mod.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_mbsfn.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_ul.o \
	${OBJECTDIR}/openair1/PHY/MODULATION/ul_7_5_kHz.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/8bit_rxdemux.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/8bit_txmux.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/angle.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cadd_sv.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cadd_vv.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cdot_prod.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cmult_mm.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cmult_sv.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vv.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vvh.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/dB_routines.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/file_output.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/invSqrt.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/log2_approx.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/lte_dfts.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/lte_phy_scope.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/lut.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/memory_routines.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/signal_energy.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/smbv.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/sqrt.o \
	${OBJECTDIR}/openair1/PHY/TOOLS/time_meas.o \
	${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_common.o \
	${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_eNb.o \
	${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_ue.o \
	${OBJECTDIR}/openair1/SCHED/pucch_pc.o \
	${OBJECTDIR}/openair1/SCHED/pusch_pc.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/bypass_session_layer.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/emu_transport.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/multicast_link.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/netlink_init.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/pgm_link.o \
	${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/socket.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/create_plots.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/delta_BLER_1.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_beta_training.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_delta_BLER.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/sinr_Eff_Calc.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_abstraction.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_top_script.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/beta_training_EESM.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_collection_mode5.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_extraction.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER_1.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/demap_q.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/opposite_q.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_0.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_100.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_119.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_150.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_200.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_250.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_300.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_350.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_400.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_450.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_500.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_550.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_66.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_80.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/eval_results.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/LTE_Configuration.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms_20_25.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/pdcch_20MHz_awgn.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/dlsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/framegen.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/gpib_send.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mat2wv.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mbmssim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pbchsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcch_eval_results.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcchsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plotTool.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_PePu.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_SePu.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channels.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_constellations.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ce_prec_ul.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ch_est.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_floating_point_signals.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce_.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_prec_dl.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_rxF.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_tx_bf.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_txdata.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/prachsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsignalgenerator.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/scansim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/signalanalyzer.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/syncsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/test.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsignalgenerator.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim.o \
	${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim2.o \
	${OBJECTDIR}/openair1/SIMULATION/RF/adc.o \
	${OBJECTDIR}/openair1/SIMULATION/RF/dac.o \
	${OBJECTDIR}/openair1/SIMULATION/RF/rf.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/abstraction.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/ch_desc_proto.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/corr_mat.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/gauss.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/llr_quantization.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_channel.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_tv_channel.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/random_channel.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/rangen_double.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/scm.o \
	${OBJECTDIR}/openair1/SIMULATION/TOOLS/taus.o \
	${OBJECTDIR}/openair2/ENB_APP/enb_app.o \
	${OBJECTDIR}/openair2/ENB_APP/enb_config.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/config.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_RA.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_bch.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_dlsch.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_mch.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_primitives.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_ulsch.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/l1_helpers.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/lte_transport_init.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/main.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/openair2_proc.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/pre_processor.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/ra_procedures.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/rar_tools.o \
	${OBJECTDIR}/openair2/LAYER2/MAC/ue_procedures.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_control_primitive.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_fifo.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_netlink.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_primitives.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_security.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_sequence_manager.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_thread.o \
	${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_util.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_in_sdu.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_init.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_reassembly.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_receiver.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_retransmit.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_rx_list.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segment.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segments_holes.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_status_report.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_test.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_poll_retransmit.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_reordering.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_status_prohibit.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_windows.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm_init.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_control_primitives.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_dar.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_fsm.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_reassembly.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_receiver.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_segment.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_test.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_very_simple_test.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/rlc.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mac.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mpls.o \
	${OBJECTDIR}/openair2/LAYER2/RLC/rlc_rrc.o \
	${OBJECTDIR}/openair2/LAYER2/layer2_top.o \
	${OBJECTDIR}/openair2/LAYER2/openair2_proc.o \
	${OBJECTDIR}/openair2/LAYER2/register.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/CTL_TOOL/nascell_ioctl.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_ascontrol.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_classifier.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_common.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_device.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_iocontrol.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_netlink.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_tool.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_ascontrol.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_classifier.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_common.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_device.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_iocontrol.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_netlink.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_tool.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/netltest.o \
	${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/nettestPDCP.o \
	${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/nasrg_simu_meas.o \
	${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/rrm_fifo_standalone.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/RB_TOOL/rb_tool.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/classifier.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/common.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/device.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/ioctl.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/netlink.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/tool.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/RB_TOOL/rb_tool.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/TESTBENCH/testbench.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/classifier.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/common.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/device.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/ioctl.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/mesh.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/netlink.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/tool.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/common.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/device.o \
	${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/netlink.o \
	${OBJECTDIR}/openair2/PHY_INTERFACE/mac_phy_primitives.o \
	${OBJECTDIR}/openair2/RRC/L2_INTERFACE/openair_rrc_L2_interface.o \
	${OBJECTDIR}/openair2/RRC/LITE/L2_interface.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AC-BarringConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Context.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AccessStratumRelease.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfoList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalSpectrumEmission.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AllowedMeasBandwidth.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BIT_STRING.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BOOLEAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassInfoCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriority1XRTT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityList1XRTT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityListHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandIndicatorGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandInfoEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandListEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandclassCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/C-RNTI.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CDMA2000-Type.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportPeriodic.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFB-RegistrationParam1XRTT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierBandwidthEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoListGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellChangeOrder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIdentity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndex.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndexList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionParametersCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionPriority.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-AM-RLC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-UM-RLC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfoList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-Info.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-InfoList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-Identity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToReleaseList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRX-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoNAS.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DeltaFList-PUCCH.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/EstablishmentCause.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ExplicitListOfARFCNs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FilterCoefficient.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityListGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Handover.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Hysteresis.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI-Digit.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/INTEGER.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-1XRTT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-HRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD128.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD384.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD768.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IdleModeMobilityControlInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InitialUE-Identity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBlackCellList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqBlackCellList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Key-eNodeB-Star.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/LogicalChannelConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MAC-MainConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfigList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC-MNC-Digit.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MMEC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MNC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MasterInformationBlock.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasGapConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasId.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToRemoveList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectId.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToRemoveList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasParameters.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResults.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultsCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityControlInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityParametersCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityStateParameters.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/N1-PUCCH-AN-PersistentList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NULL.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeEnumerated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeInteger.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NextHopChainingCount.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/OCTET_STRING.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/P-Max.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Parameters.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PHICH-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-Identity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList2.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigSIB.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Paging.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecord.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecordList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingUE-Identity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhyLayerParameters.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellId.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdListCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdRange.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-TDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysicalConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollByte.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollPDU.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationInfoHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationZoneIdHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PresenceAntennaPort1.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRange.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRangeInterRAT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-RxLevMin.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAND-CDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAT-Type.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RF-Parameters.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RLC-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRC-TransactionIdentifier.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRM-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRP-Range.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRQ-Range.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommonSIB.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RedirectedCarrierInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestabUE-Identity.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentCause.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RegisteredMME.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReleaseCause.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigId.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigInterRAT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToRemoveList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportInterval.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReselectionThreshold.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/S-TMSI.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SI-OrPSI-GERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-MappingInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-Type.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SN-FieldLength.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigDL.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigUL.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddMod.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddModList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfo.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfoList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingRequestConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecondaryPreRegistrationZoneIdListHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityAlgorithmConfig.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigHO.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigSMC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ShortMAC-I.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SpeedStateScaleFactors.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandList1XRTT.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListHRPD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD128.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD384.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD768.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-FDD.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD128.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD384.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD768.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInfoListGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs-sib-TypeAndInfo-Member.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType1.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType10.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType11.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType2.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType3.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType4.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType5.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType6.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType7.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType8.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType9.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemTimeInfoCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-PollRetransmit.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reordering.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reselection.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-StatusProhibit.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TDD-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-Index.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-PDCCH-Config.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdCDMA2000.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdEUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdGERAN.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdUTRA.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeAlignmentTimer.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeToTrigger.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TrackingAreaCode.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-Container.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-ContainerList.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRequest.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-EUTRA-Capability.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-TimersAndConstants.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-AM-RLC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CyclicPrefixLength.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-Message.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-MessageType.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-ReferenceSignalsPUSCH.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-UM-RLC.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer-r8-IEs.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlCommon.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlDedicated.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn1_msg.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SEQUENCE_OF.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SET_OF.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_codecs_prim.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_decoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_length.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_tag.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/bsearch.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_CHOICE.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE_OF.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SET_OF.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_TYPE.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constraints.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/converter-sample.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/der_encoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_decoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_encoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_opentype.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_support.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/rtai_mem.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_decoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_encoder.o \
	${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_support.o \
	${OBJECTDIR}/openair2/RRC/LITE/mesh_top.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_2_rrm_msg.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_UE.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_UE_ral.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_common.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_config.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_GTPV1U.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_S1AP.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_UE_context.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_ral.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrc_rrm_interface.o \
	${OBJECTDIR}/openair2/RRC/LITE/rrm_2_rrc_msg.o \
	${OBJECTDIR}/openair2/RRC/LITE/utils.o \
	${OBJECTDIR}/openair2/RRC/NAS/nas_config.o \
	${OBJECTDIR}/openair2/RRC/NAS/rb_config.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/Message.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerConfirm.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserConfirm.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageConnectionRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveRadioAccessBearerRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveUserRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageUserReconfigurationComplete.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCMessageHandler.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCUdpSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddRadioAccessBearerResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddUserResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageConnectionResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveRadioAccessBearerResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveUserResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageUserReconfiguration.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMMessageHandler.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMUdpSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ajp13Socket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/AjpBaseSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Base64.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Debug.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Event.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventHandler.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventTime.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Exception.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/File.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/FileStream.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HTTPSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpBaseSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpClientSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpDebugSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpGetSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPostSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPutSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpRequest.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpResponse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpTransaction.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdCookies.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdForm.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/IEventOwner.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv4Address.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv6Address.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Json.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Lock.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/MemFile.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Mutex.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Parse.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvServer.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SSLInitializer.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SctpSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Semaphore.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SmtpdSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Socket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandler.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerEp.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerThread.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketStream.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketThread.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Sockets-config.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StdoutLog.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamWriter.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/TcpSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Thread.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/UdpSocket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Utility.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlDocument.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlException.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlNode.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/socket_include.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sql/sqlite3.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socket.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socketUnitTests.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/storage.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/tcpipUnitTests.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Asn1Utils.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Command.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/DataRadioBearer.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/ENodeB.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/LogicalChannel.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Mobile.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioBearer.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioResources.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/SignallingRadioBearer.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transaction.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transactions.o \
	${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/rrm.o \
	${OBJECTDIR}/openair2/UTIL/AT_COMMANDS/parser.o \
	${OBJECTDIR}/openair2/UTIL/BIGPHYS/bigphys.o \
	${OBJECTDIR}/openair2/UTIL/CLI/cli.o \
	${OBJECTDIR}/openair2/UTIL/CLI/cli_cmd.o \
	${OBJECTDIR}/openair2/UTIL/CLI/cli_server.o \
	${OBJECTDIR}/openair2/UTIL/FIFO/pad_list.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/driver_entry.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_cas.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_dcas.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_free.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_increment.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_malloc.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_delete.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_get_and_set.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_new.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_pop_push.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_query.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_free.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_delete.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_new.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_query.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_queue.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_delete.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_new.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_query.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_delete.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_get_and_set.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_link.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_new.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_delete.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_new.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_push_pop.o \
	${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_query.o \
	${OBJECTDIR}/openair2/UTIL/LISTS/list.o \
	${OBJECTDIR}/openair2/UTIL/LISTS/list2.o \
	${OBJECTDIR}/openair2/UTIL/LOG/log.o \
	${OBJECTDIR}/openair2/UTIL/LOG/vcd_signal_dumper.o \
	${OBJECTDIR}/openair2/UTIL/MATH/crc_byte.o \
	${OBJECTDIR}/openair2/UTIL/MATH/oml.o \
	${OBJECTDIR}/openair2/UTIL/MATH/random.o \
	${OBJECTDIR}/openair2/UTIL/MATH/taus.o \
	${OBJECTDIR}/openair2/UTIL/MEM/mem_block.o \
	${OBJECTDIR}/openair2/UTIL/MEM/mem_mngt.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_call_emu.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_config_mobi.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_create_dir.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_detect_file.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_generate_report.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_get_opt.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_XML.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_filename.o \
	${OBJECTDIR}/openair2/UTIL/OCG/OCG_save_XML.o \
	${OBJECTDIR}/openair2/UTIL/OMG/client_traci_OMG.o \
	${OBJECTDIR}/openair2/UTIL/OMG/common.o \
	${OBJECTDIR}/openair2/UTIL/OMG/grid.o \
	${OBJECTDIR}/openair2/UTIL/OMG/id_manager.o \
	${OBJECTDIR}/openair2/UTIL/OMG/job.o \
	${OBJECTDIR}/openair2/UTIL/OMG/mobility_parser.o \
	${OBJECTDIR}/openair2/UTIL/OMG/omg.o \
	${OBJECTDIR}/openair2/UTIL/OMG/omg_hashtable.o \
	${OBJECTDIR}/openair2/UTIL/OMG/rwalk.o \
	${OBJECTDIR}/openair2/UTIL/OMG/rwp.o \
	${OBJECTDIR}/openair2/UTIL/OMG/socket_traci_OMG.o \
	${OBJECTDIR}/openair2/UTIL/OMG/static.o \
	${OBJECTDIR}/openair2/UTIL/OMG/steadystaterwp.o \
	${OBJECTDIR}/openair2/UTIL/OMG/storage_traci_OMG.o \
	${OBJECTDIR}/openair2/UTIL/OMG/sumo.o \
	${OBJECTDIR}/openair2/UTIL/OMG/trace.o \
	${OBJECTDIR}/openair2/UTIL/OMG/trace_hashtable.o \
	${OBJECTDIR}/openair2/UTIL/OMV/communicationthread.o \
	${OBJECTDIR}/openair2/UTIL/OMV/mywindow.o \
	${OBJECTDIR}/openair2/UTIL/OMV/omv.o \
	${OBJECTDIR}/openair2/UTIL/OMV/openglwidget.o \
	${OBJECTDIR}/openair2/UTIL/OPT/packet-mac-lte.o \
	${OBJECTDIR}/openair2/UTIL/OPT/probe.o \
	${OBJECTDIR}/openair2/UTIL/OPT/socket_sender.o \
	${OBJECTDIR}/openair2/UTIL/OSA/osa_key_deriver.o \
	${OBJECTDIR}/openair2/UTIL/OSA/osa_rijndael.o \
	${OBJECTDIR}/openair2/UTIL/OSA/osa_snow3g.o \
	${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eea.o \
	${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eia.o \
	${OBJECTDIR}/openair2/UTIL/OTG/main.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_form.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_kpi.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_models.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_rx.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_rx_socket.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_tx.o \
	${OBJECTDIR}/openair2/UTIL/OTG/otg_tx_socket.o \
	${OBJECTDIR}/openair2/UTIL/TIMER/umts_timer.o \
	${OBJECTDIR}/openair2/UTIL/TRACE/fifo_printf.o \
	${OBJECTDIR}/openair2/X2AP/x2ap.o \
	${OBJECTDIR}/openair2/X2AP/x2ap_common.o \
	${OBJECTDIR}/phy_procedures_sim_form.o \
	${OBJECTDIR}/plot_results.o \
	${OBJECTDIR}/sinr_sim.o \
	${OBJECTDIR}/threadpool.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lfftw3 -lm

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk oaisim

oaisim: ${OBJECTFILES}
	${LINK.cc} -o oaisim ${OBJECTFILES} ${LDLIBSOPTIONS} -lpthread -lrt -lblas -lfftw3

${OBJECTDIR}/PROC/Process.o: PROC/Process.c 
	${MKDIR} -p ${OBJECTDIR}/PROC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PROC/Process.o PROC/Process.c

${OBJECTDIR}/PROC/channel_sim_proc.o: PROC/channel_sim_proc.c 
	${MKDIR} -p ${OBJECTDIR}/PROC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PROC/channel_sim_proc.o PROC/channel_sim_proc.c

${OBJECTDIR}/ad9361/platform.o: ad9361/platform.c 
	${MKDIR} -p ${OBJECTDIR}/ad9361
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ad9361/platform.o ad9361/platform.c

${OBJECTDIR}/channel_sim.o: channel_sim.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/channel_sim.o channel_sim.c

${OBJECTDIR}/common/utils/collection/hashtable/hashtable.o: common/utils/collection/hashtable/hashtable.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/collection/hashtable
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/collection/hashtable/hashtable.o common/utils/collection/hashtable/hashtable.c

${OBJECTDIR}/common/utils/collection/hashtable/obj_hashtable.o: common/utils/collection/hashtable/obj_hashtable.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/collection/hashtable
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/collection/hashtable/obj_hashtable.o common/utils/collection/hashtable/obj_hashtable.c

${OBJECTDIR}/common/utils/itti/backtrace.o: common/utils/itti/backtrace.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/backtrace.o common/utils/itti/backtrace.c

${OBJECTDIR}/common/utils/itti/intertask_interface.o: common/utils/itti/intertask_interface.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/intertask_interface.o common/utils/itti/intertask_interface.c

${OBJECTDIR}/common/utils/itti/intertask_interface_dump.o: common/utils/itti/intertask_interface_dump.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/intertask_interface_dump.o common/utils/itti/intertask_interface_dump.c

${OBJECTDIR}/common/utils/itti/memory_pools.o: common/utils/itti/memory_pools.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/memory_pools.o common/utils/itti/memory_pools.c

${OBJECTDIR}/common/utils/itti/signals.o: common/utils/itti/signals.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/signals.o common/utils/itti/signals.c

${OBJECTDIR}/common/utils/itti/timer.o: common/utils/itti/timer.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti/timer.o common/utils/itti/timer.c

${OBJECTDIR}/common/utils/itti_analyzer/itti_analyzer.o: common/utils/itti_analyzer/itti_analyzer.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/itti_analyzer.o common/utils/itti_analyzer/itti_analyzer.c

${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/buffers.o: common/utils/itti_analyzer/libbuffers/buffers.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/buffers.o common/utils/itti_analyzer/libbuffers/buffers.c

${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/file.o: common/utils/itti_analyzer/libbuffers/file.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/file.o common/utils/itti_analyzer/libbuffers/file.c

${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/socket.o: common/utils/itti_analyzer/libbuffers/socket.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libbuffers/socket.o common/utils/itti_analyzer/libbuffers/socket.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/array_type.o: common/utils/itti_analyzer/libparser/array_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/array_type.o common/utils/itti_analyzer/libparser/array_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_type.o: common/utils/itti_analyzer/libparser/enum_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_type.o common/utils/itti_analyzer/libparser/enum_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_value_type.o: common/utils/itti_analyzer/libparser/enum_value_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/enum_value_type.o common/utils/itti_analyzer/libparser/enum_value_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/field_type.o: common/utils/itti_analyzer/libparser/field_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/field_type.o common/utils/itti_analyzer/libparser/field_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/file_type.o: common/utils/itti_analyzer/libparser/file_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/file_type.o common/utils/itti_analyzer/libparser/file_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/fundamental_type.o: common/utils/itti_analyzer/libparser/fundamental_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/fundamental_type.o common/utils/itti_analyzer/libparser/fundamental_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/pointer_type.o: common/utils/itti_analyzer/libparser/pointer_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/pointer_type.o common/utils/itti_analyzer/libparser/pointer_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/reference_type.o: common/utils/itti_analyzer/libparser/reference_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/reference_type.o common/utils/itti_analyzer/libparser/reference_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/struct_type.o: common/utils/itti_analyzer/libparser/struct_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/struct_type.o common/utils/itti_analyzer/libparser/struct_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/typedef_type.o: common/utils/itti_analyzer/libparser/typedef_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/typedef_type.o common/utils/itti_analyzer/libparser/typedef_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/types.o: common/utils/itti_analyzer/libparser/types.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/types.o common/utils/itti_analyzer/libparser/types.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/union_type.o: common/utils/itti_analyzer/libparser/union_type.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/union_type.o common/utils/itti_analyzer/libparser/union_type.c

${OBJECTDIR}/common/utils/itti_analyzer/libparser/xml_parse.o: common/utils/itti_analyzer/libparser/xml_parse.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libparser
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libparser/xml_parse.o common/utils/itti_analyzer/libparser/xml_parse.c

${OBJECTDIR}/common/utils/itti_analyzer/libresolver/locate_root.o: common/utils/itti_analyzer/libresolver/locate_root.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libresolver
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libresolver/locate_root.o common/utils/itti_analyzer/libresolver/locate_root.c

${OBJECTDIR}/common/utils/itti_analyzer/libresolver/resolvers.o: common/utils/itti_analyzer/libresolver/resolvers.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libresolver
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libresolver/resolvers.o common/utils/itti_analyzer/libresolver/resolvers.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_callbacks.o: common/utils/itti_analyzer/libui/ui_callbacks.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_callbacks.o common/utils/itti_analyzer/libui/ui_callbacks.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_filters.o: common/utils/itti_analyzer/libui/ui_filters.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_filters.o common/utils/itti_analyzer/libui/ui_filters.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_interface.o: common/utils/itti_analyzer/libui/ui_interface.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_interface.o common/utils/itti_analyzer/libui/ui_interface.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_main_screen.o: common/utils/itti_analyzer/libui/ui_main_screen.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_main_screen.o common/utils/itti_analyzer/libui/ui_main_screen.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_menu_bar.o: common/utils/itti_analyzer/libui/ui_menu_bar.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_menu_bar.o common/utils/itti_analyzer/libui/ui_menu_bar.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notebook.o: common/utils/itti_analyzer/libui/ui_notebook.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notebook.o common/utils/itti_analyzer/libui/ui_notebook.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notif_dlg.o: common/utils/itti_analyzer/libui/ui_notif_dlg.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notif_dlg.o common/utils/itti_analyzer/libui/ui_notif_dlg.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notifications.o: common/utils/itti_analyzer/libui/ui_notifications.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_notifications.o common/utils/itti_analyzer/libui/ui_notifications.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_signal_dissect_view.o: common/utils/itti_analyzer/libui/ui_signal_dissect_view.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_signal_dissect_view.o common/utils/itti_analyzer/libui/ui_signal_dissect_view.c

${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_tree_view.o: common/utils/itti_analyzer/libui/ui_tree_view.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/itti_analyzer/libui
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/itti_analyzer/libui/ui_tree_view.o common/utils/itti_analyzer/libui/ui_tree_view.c

${OBJECTDIR}/common/utils/msc/msc.o: common/utils/msc/msc.c 
	${MKDIR} -p ${OBJECTDIR}/common/utils/msc
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/common/utils/msc/msc.o common/utils/msc/msc.c

${OBJECTDIR}/cor_SF_sim.o: cor_SF_sim.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cor_SF_sim.o cor_SF_sim.c

${OBJECTDIR}/event_handler.o: event_handler.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/event_handler.o event_handler.c

${OBJECTDIR}/init_lte.o: init_lte.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/init_lte.o init_lte.c

${OBJECTDIR}/oaisim.o: oaisim.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/oaisim.o oaisim.c

${OBJECTDIR}/oaisim_config.o: oaisim_config.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/oaisim_config.o oaisim_config.c

${OBJECTDIR}/oaisim_functions.o: oaisim_functions.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/oaisim_functions.o oaisim_functions.c

${OBJECTDIR}/oaisim_pad.o: oaisim_pad.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/oaisim_pad.o oaisim_pad.c

${OBJECTDIR}/openair1/MAC_INTERFACE/init.o: openair1/MAC_INTERFACE/init.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/MAC_INTERFACE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/MAC_INTERFACE/init.o openair1/MAC_INTERFACE/init.c

${OBJECTDIR}/openair1/MAC_INTERFACE/register.o: openair1/MAC_INTERFACE/register.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/MAC_INTERFACE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/MAC_INTERFACE/register.o openair1/MAC_INTERFACE/register.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte.o: openair1/PHY/CODING/3gpplte.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte.o openair1/PHY/CODING/3gpplte.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte_sse.o: openair1/PHY/CODING/3gpplte_sse.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte_sse.o openair1/PHY/CODING/3gpplte_sse.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder.o: openair1/PHY/CODING/3gpplte_turbo_decoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder.o openair1/PHY/CODING/3gpplte_turbo_decoder.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse.o: openair1/PHY/CODING/3gpplte_turbo_decoder_sse.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse.o openair1/PHY/CODING/3gpplte_turbo_decoder_sse.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_16bit.o: openair1/PHY/CODING/3gpplte_turbo_decoder_sse_16bit.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_16bit.o openair1/PHY/CODING/3gpplte_turbo_decoder_sse_16bit.c

${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_8bit.o: openair1/PHY/CODING/3gpplte_turbo_decoder_sse_8bit.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/3gpplte_turbo_decoder_sse_8bit.o openair1/PHY/CODING/3gpplte_turbo_decoder_sse_8bit.c

${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/ltetest.o: openair1/PHY/CODING/TESTBENCH/ltetest.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/ltetest.o openair1/PHY/CODING/TESTBENCH/ltetest.c

${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/pdcch_test.o: openair1/PHY/CODING/TESTBENCH/pdcch_test.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/pdcch_test.o openair1/PHY/CODING/TESTBENCH/pdcch_test.c

${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/viterbi_test.o: openair1/PHY/CODING/TESTBENCH/viterbi_test.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/TESTBENCH/viterbi_test.o openair1/PHY/CODING/TESTBENCH/viterbi_test.c

${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte.o: openair1/PHY/CODING/ccoding_byte.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte.o openair1/PHY/CODING/ccoding_byte.c

${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte_lte.o: openair1/PHY/CODING/ccoding_byte_lte.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/ccoding_byte_lte.o openair1/PHY/CODING/ccoding_byte_lte.c

${OBJECTDIR}/openair1/PHY/CODING/crc_byte.o: openair1/PHY/CODING/crc_byte.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/crc_byte.o openair1/PHY/CODING/crc_byte.c

${OBJECTDIR}/openair1/PHY/CODING/lte_rate_matching.o: openair1/PHY/CODING/lte_rate_matching.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/lte_rate_matching.o openair1/PHY/CODING/lte_rate_matching.c

${OBJECTDIR}/openair1/PHY/CODING/lte_segmentation.o: openair1/PHY/CODING/lte_segmentation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/lte_segmentation.o openair1/PHY/CODING/lte_segmentation.c

${OBJECTDIR}/openair1/PHY/CODING/lte_tf.o: openair1/PHY/CODING/lte_tf.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/lte_tf.o openair1/PHY/CODING/lte_tf.m

${OBJECTDIR}/openair1/PHY/CODING/rate_matching.o: openair1/PHY/CODING/rate_matching.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/rate_matching.o openair1/PHY/CODING/rate_matching.c

${OBJECTDIR}/openair1/PHY/CODING/viterbi.o: openair1/PHY/CODING/viterbi.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/viterbi.o openair1/PHY/CODING/viterbi.c

${OBJECTDIR}/openair1/PHY/CODING/viterbi_lte.o: openair1/PHY/CODING/viterbi_lte.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/CODING
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/CODING/viterbi_lte.o openair1/PHY/CODING/viterbi_lte.c

${OBJECTDIR}/openair1/PHY/INIT/init_top.o: openair1/PHY/INIT/init_top.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/INIT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/INIT/init_top.o openair1/PHY/INIT/init_top.c

${OBJECTDIR}/openair1/PHY/INIT/lte_init.o: openair1/PHY/INIT/lte_init.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/INIT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/INIT/lte_init.o openair1/PHY/INIT/lte_init.c

${OBJECTDIR}/openair1/PHY/INIT/lte_parms.o: openair1/PHY/INIT/lte_parms.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/INIT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/INIT/lte_parms.o openair1/PHY/INIT/lte_parms.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/adjust_gain.o: openair1/PHY/LTE_ESTIMATION/adjust_gain.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/adjust_gain.o openair1/PHY/LTE_ESTIMATION/adjust_gain.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_domain_filters.o: openair1/PHY/LTE_ESTIMATION/freq_domain_filters.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_domain_filters.o openair1/PHY/LTE_ESTIMATION/freq_domain_filters.m

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_equalization.o: openair1/PHY/LTE_ESTIMATION/freq_equalization.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/freq_equalization.o openair1/PHY/LTE_ESTIMATION/freq_equalization.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_adjust_sync.o: openair1/PHY/LTE_ESTIMATION/lte_adjust_sync.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_adjust_sync.o openair1/PHY/LTE_ESTIMATION/lte_adjust_sync.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation.o: openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation.o openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation_emos.o: openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation_emos.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation_emos.o openair1/PHY/LTE_ESTIMATION/lte_dl_channel_estimation_emos.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_mbsfn_channel_estimation.o: openair1/PHY/LTE_ESTIMATION/lte_dl_mbsfn_channel_estimation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_dl_mbsfn_channel_estimation.o openair1/PHY/LTE_ESTIMATION/lte_dl_mbsfn_channel_estimation.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_eNB_measurements.o: openair1/PHY/LTE_ESTIMATION/lte_eNB_measurements.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_eNB_measurements.o openair1/PHY/LTE_ESTIMATION/lte_eNB_measurements.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_est_freq_offset.o: openair1/PHY/LTE_ESTIMATION/lte_est_freq_offset.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_est_freq_offset.o openair1/PHY/LTE_ESTIMATION/lte_est_freq_offset.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_time.o: openair1/PHY/LTE_ESTIMATION/lte_sync_time.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_time.o openair1/PHY/LTE_ESTIMATION/lte_sync_time.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o: openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o: openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.o openair1/PHY/LTE_ESTIMATION/lte_sync_timefreq.m

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ue_measurements.o: openair1/PHY/LTE_ESTIMATION/lte_ue_measurements.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ue_measurements.o openair1/PHY/LTE_ESTIMATION/lte_ue_measurements.c

${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ul_channel_estimation.o: openair1/PHY/LTE_ESTIMATION/lte_ul_channel_estimation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_ESTIMATION/lte_ul_channel_estimation.o openair1/PHY/LTE_ESTIMATION/lte_ul_channel_estimation.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/gen_mod_table.o: openair1/PHY/LTE_REFSIG/gen_mod_table.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/gen_mod_table.o openair1/PHY/LTE_REFSIG/gen_mod_table.m

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_cell_spec.o: openair1/PHY/LTE_REFSIG/lte_dl_cell_spec.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_cell_spec.o openair1/PHY/LTE_REFSIG/lte_dl_cell_spec.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_mbsfn.o: openair1/PHY/LTE_REFSIG/lte_dl_mbsfn.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_mbsfn.o openair1/PHY/LTE_REFSIG/lte_dl_mbsfn.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_uespec.o: openair1/PHY/LTE_REFSIG/lte_dl_uespec.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_dl_uespec.o openair1/PHY/LTE_REFSIG/lte_dl_uespec.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold.o: openair1/PHY/LTE_REFSIG/lte_gold.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold.o openair1/PHY/LTE_REFSIG/lte_gold.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold_mbsfn.o: openair1/PHY/LTE_REFSIG/lte_gold_mbsfn.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_gold_mbsfn.o openair1/PHY/LTE_REFSIG/lte_gold_mbsfn.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul.o: openair1/PHY/LTE_REFSIG/lte_ul.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul.o openair1/PHY/LTE_REFSIG/lte_ul.m

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul_ref.o: openair1/PHY/LTE_REFSIG/lte_ul_ref.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/lte_ul_ref.o openair1/PHY/LTE_REFSIG/lte_ul_ref.c

${OBJECTDIR}/openair1/PHY/LTE_REFSIG/primary_synch.o: openair1/PHY/LTE_REFSIG/primary_synch.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_REFSIG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_REFSIG/primary_synch.o openair1/PHY/LTE_REFSIG/primary_synch.m

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci.o: openair1/PHY/LTE_TRANSPORT/dci.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci.o openair1/PHY/LTE_TRANSPORT/dci.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci_tools.o: openair1/PHY/LTE_TRANSPORT/dci_tools.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dci_tools.o openair1/PHY/LTE_TRANSPORT/dci_tools.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_coding.o: openair1/PHY/LTE_TRANSPORT/dlsch_coding.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_coding.o openair1/PHY/LTE_TRANSPORT/dlsch_coding.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_decoding.o: openair1/PHY/LTE_TRANSPORT/dlsch_decoding.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_decoding.o openair1/PHY/LTE_TRANSPORT/dlsch_decoding.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_demodulation.o: openair1/PHY/LTE_TRANSPORT/dlsch_demodulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_demodulation.o openair1/PHY/LTE_TRANSPORT/dlsch_demodulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_llr_computation.o: openair1/PHY/LTE_TRANSPORT/dlsch_llr_computation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_llr_computation.o openair1/PHY/LTE_TRANSPORT/dlsch_llr_computation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_modulation.o: openair1/PHY/LTE_TRANSPORT/dlsch_modulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_modulation.o openair1/PHY/LTE_TRANSPORT/dlsch_modulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_scrambling.o: openair1/PHY/LTE_TRANSPORT/dlsch_scrambling.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/dlsch_scrambling.o openair1/PHY/LTE_TRANSPORT/dlsch_scrambling.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/drs_modulation.o: openair1/PHY/LTE_TRANSPORT/drs_modulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/drs_modulation.o openair1/PHY/LTE_TRANSPORT/drs_modulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/group_hopping.o: openair1/PHY/LTE_TRANSPORT/group_hopping.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/group_hopping.o openair1/PHY/LTE_TRANSPORT/group_hopping.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/initial_sync.o: openair1/PHY/LTE_TRANSPORT/initial_sync.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/initial_sync.o openair1/PHY/LTE_TRANSPORT/initial_sync.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/lte_mcs.o: openair1/PHY/LTE_TRANSPORT/lte_mcs.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/lte_mcs.o openair1/PHY/LTE_TRANSPORT/lte_mcs.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pbch.o: openair1/PHY/LTE_TRANSPORT/pbch.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pbch.o openair1/PHY/LTE_TRANSPORT/pbch.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pcfich.o: openair1/PHY/LTE_TRANSPORT/pcfich.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pcfich.o openair1/PHY/LTE_TRANSPORT/pcfich.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/phich.o: openair1/PHY/LTE_TRANSPORT/phich.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/phich.o openair1/PHY/LTE_TRANSPORT/phich.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots.o: openair1/PHY/LTE_TRANSPORT/pilots.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots.o openair1/PHY/LTE_TRANSPORT/pilots.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots_mbsfn.o: openair1/PHY/LTE_TRANSPORT/pilots_mbsfn.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pilots_mbsfn.o openair1/PHY/LTE_TRANSPORT/pilots_mbsfn.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pmch.o: openair1/PHY/LTE_TRANSPORT/pmch.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pmch.o openair1/PHY/LTE_TRANSPORT/pmch.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/power_control.o: openair1/PHY/LTE_TRANSPORT/power_control.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/power_control.o openair1/PHY/LTE_TRANSPORT/power_control.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/prach.o: openair1/PHY/LTE_TRANSPORT/prach.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/prach.o openair1/PHY/LTE_TRANSPORT/prach.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/print_stats.o: openair1/PHY/LTE_TRANSPORT/print_stats.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/print_stats.o openair1/PHY/LTE_TRANSPORT/print_stats.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pss.o: openair1/PHY/LTE_TRANSPORT/pss.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pss.o openair1/PHY/LTE_TRANSPORT/pss.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pucch.o: openair1/PHY/LTE_TRANSPORT/pucch.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/pucch.o openair1/PHY/LTE_TRANSPORT/pucch.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/rar_tools.o: openair1/PHY/LTE_TRANSPORT/rar_tools.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/rar_tools.o openair1/PHY/LTE_TRANSPORT/rar_tools.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/srs_modulation.o: openair1/PHY/LTE_TRANSPORT/srs_modulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/srs_modulation.o openair1/PHY/LTE_TRANSPORT/srs_modulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss.o: openair1/PHY/LTE_TRANSPORT/sss.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss.o openair1/PHY/LTE_TRANSPORT/sss.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss_gen.o: openair1/PHY/LTE_TRANSPORT/sss_gen.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/sss_gen.o openair1/PHY/LTE_TRANSPORT/sss_gen.m

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/uci_tools.o: openair1/PHY/LTE_TRANSPORT/uci_tools.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/uci_tools.o openair1/PHY/LTE_TRANSPORT/uci_tools.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_coding.o: openair1/PHY/LTE_TRANSPORT/ulsch_coding.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_coding.o openair1/PHY/LTE_TRANSPORT/ulsch_coding.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_decoding.o: openair1/PHY/LTE_TRANSPORT/ulsch_decoding.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_decoding.o openair1/PHY/LTE_TRANSPORT/ulsch_decoding.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_demodulation.o: openair1/PHY/LTE_TRANSPORT/ulsch_demodulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_demodulation.o openair1/PHY/LTE_TRANSPORT/ulsch_demodulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_modulation.o: openair1/PHY/LTE_TRANSPORT/ulsch_modulation.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/ulsch_modulation.o openair1/PHY/LTE_TRANSPORT/ulsch_modulation.c

${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/vrb_maps.o: openair1/PHY/LTE_TRANSPORT/vrb_maps.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/LTE_TRANSPORT/vrb_maps.o openair1/PHY/LTE_TRANSPORT/vrb_maps.m

${OBJECTDIR}/openair1/PHY/MODULATION/gen_7_5_kHz.o: openair1/PHY/MODULATION/gen_7_5_kHz.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/gen_7_5_kHz.o openair1/PHY/MODULATION/gen_7_5_kHz.m

${OBJECTDIR}/openair1/PHY/MODULATION/ofdm_mod.o: openair1/PHY/MODULATION/ofdm_mod.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/ofdm_mod.o openair1/PHY/MODULATION/ofdm_mod.c

${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep.o: openair1/PHY/MODULATION/slot_fep.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep.o openair1/PHY/MODULATION/slot_fep.c

${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_mbsfn.o: openair1/PHY/MODULATION/slot_fep_mbsfn.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_mbsfn.o openair1/PHY/MODULATION/slot_fep_mbsfn.c

${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_ul.o: openair1/PHY/MODULATION/slot_fep_ul.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/slot_fep_ul.o openair1/PHY/MODULATION/slot_fep_ul.c

${OBJECTDIR}/openair1/PHY/MODULATION/ul_7_5_kHz.o: openair1/PHY/MODULATION/ul_7_5_kHz.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/MODULATION
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/MODULATION/ul_7_5_kHz.o openair1/PHY/MODULATION/ul_7_5_kHz.c

${OBJECTDIR}/openair1/PHY/TOOLS/8bit_rxdemux.o: openair1/PHY/TOOLS/8bit_rxdemux.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/8bit_rxdemux.o openair1/PHY/TOOLS/8bit_rxdemux.c

${OBJECTDIR}/openair1/PHY/TOOLS/8bit_txmux.o: openair1/PHY/TOOLS/8bit_txmux.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/8bit_txmux.o openair1/PHY/TOOLS/8bit_txmux.c

${OBJECTDIR}/openair1/PHY/TOOLS/angle.o: openair1/PHY/TOOLS/angle.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/angle.o openair1/PHY/TOOLS/angle.c

${OBJECTDIR}/openair1/PHY/TOOLS/cadd_sv.o: openair1/PHY/TOOLS/cadd_sv.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cadd_sv.o openair1/PHY/TOOLS/cadd_sv.c

${OBJECTDIR}/openair1/PHY/TOOLS/cadd_vv.o: openair1/PHY/TOOLS/cadd_vv.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cadd_vv.o openair1/PHY/TOOLS/cadd_vv.c

${OBJECTDIR}/openair1/PHY/TOOLS/cdot_prod.o: openair1/PHY/TOOLS/cdot_prod.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cdot_prod.o openair1/PHY/TOOLS/cdot_prod.c

${OBJECTDIR}/openair1/PHY/TOOLS/cmult_mm.o: openair1/PHY/TOOLS/cmult_mm.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cmult_mm.o openair1/PHY/TOOLS/cmult_mm.c

${OBJECTDIR}/openair1/PHY/TOOLS/cmult_sv.o: openair1/PHY/TOOLS/cmult_sv.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cmult_sv.o openair1/PHY/TOOLS/cmult_sv.c

${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vv.o: openair1/PHY/TOOLS/cmult_vv.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vv.o openair1/PHY/TOOLS/cmult_vv.c

${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vvh.o: openair1/PHY/TOOLS/cmult_vvh.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/cmult_vvh.o openair1/PHY/TOOLS/cmult_vvh.c

${OBJECTDIR}/openair1/PHY/TOOLS/dB_routines.o: openair1/PHY/TOOLS/dB_routines.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/dB_routines.o openair1/PHY/TOOLS/dB_routines.c

${OBJECTDIR}/openair1/PHY/TOOLS/file_output.o: openair1/PHY/TOOLS/file_output.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/file_output.o openair1/PHY/TOOLS/file_output.c

${OBJECTDIR}/openair1/PHY/TOOLS/invSqrt.o: openair1/PHY/TOOLS/invSqrt.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/invSqrt.o openair1/PHY/TOOLS/invSqrt.c

${OBJECTDIR}/openair1/PHY/TOOLS/log2_approx.o: openair1/PHY/TOOLS/log2_approx.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/log2_approx.o openair1/PHY/TOOLS/log2_approx.c

${OBJECTDIR}/openair1/PHY/TOOLS/lte_dfts.o: openair1/PHY/TOOLS/lte_dfts.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/lte_dfts.o openair1/PHY/TOOLS/lte_dfts.c

${OBJECTDIR}/openair1/PHY/TOOLS/lte_phy_scope.o: openair1/PHY/TOOLS/lte_phy_scope.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/lte_phy_scope.o openair1/PHY/TOOLS/lte_phy_scope.c

${OBJECTDIR}/openair1/PHY/TOOLS/lut.o: openair1/PHY/TOOLS/lut.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/lut.o openair1/PHY/TOOLS/lut.c

${OBJECTDIR}/openair1/PHY/TOOLS/memory_routines.o: openair1/PHY/TOOLS/memory_routines.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/memory_routines.o openair1/PHY/TOOLS/memory_routines.c

${OBJECTDIR}/openair1/PHY/TOOLS/signal_energy.o: openair1/PHY/TOOLS/signal_energy.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/signal_energy.o openair1/PHY/TOOLS/signal_energy.c

${OBJECTDIR}/openair1/PHY/TOOLS/smbv.o: openair1/PHY/TOOLS/smbv.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/smbv.o openair1/PHY/TOOLS/smbv.c

${OBJECTDIR}/openair1/PHY/TOOLS/sqrt.o: openair1/PHY/TOOLS/sqrt.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/sqrt.o openair1/PHY/TOOLS/sqrt.c

${OBJECTDIR}/openair1/PHY/TOOLS/time_meas.o: openair1/PHY/TOOLS/time_meas.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/PHY/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/PHY/TOOLS/time_meas.o openair1/PHY/TOOLS/time_meas.c

${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_common.o: openair1/SCHED/phy_procedures_lte_common.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SCHED
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_common.o openair1/SCHED/phy_procedures_lte_common.c

${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_eNb.o: openair1/SCHED/phy_procedures_lte_eNb.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SCHED
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_eNb.o openair1/SCHED/phy_procedures_lte_eNb.c

${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_ue.o: openair1/SCHED/phy_procedures_lte_ue.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SCHED
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SCHED/phy_procedures_lte_ue.o openair1/SCHED/phy_procedures_lte_ue.c

${OBJECTDIR}/openair1/SCHED/pucch_pc.o: openair1/SCHED/pucch_pc.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SCHED
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SCHED/pucch_pc.o openair1/SCHED/pucch_pc.c

${OBJECTDIR}/openair1/SCHED/pusch_pc.o: openair1/SCHED/pusch_pc.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SCHED
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SCHED/pusch_pc.o openair1/SCHED/pusch_pc.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/bypass_session_layer.o: openair1/SIMULATION/ETH_TRANSPORT/bypass_session_layer.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/bypass_session_layer.o openair1/SIMULATION/ETH_TRANSPORT/bypass_session_layer.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/emu_transport.o: openair1/SIMULATION/ETH_TRANSPORT/emu_transport.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/emu_transport.o openair1/SIMULATION/ETH_TRANSPORT/emu_transport.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/multicast_link.o: openair1/SIMULATION/ETH_TRANSPORT/multicast_link.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/multicast_link.o openair1/SIMULATION/ETH_TRANSPORT/multicast_link.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/netlink_init.o: openair1/SIMULATION/ETH_TRANSPORT/netlink_init.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/netlink_init.o openair1/SIMULATION/ETH_TRANSPORT/netlink_init.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/pgm_link.o: openair1/SIMULATION/ETH_TRANSPORT/pgm_link.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/pgm_link.o openair1/SIMULATION/ETH_TRANSPORT/pgm_link.c

${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/socket.o: openair1/SIMULATION/ETH_TRANSPORT/socket.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/ETH_TRANSPORT/socket.o openair1/SIMULATION/ETH_TRANSPORT/socket.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/create_plots.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/create_plots.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/create_plots.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/create_plots.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/delta_BLER_1.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/delta_BLER_1.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/delta_BLER_1.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/delta_BLER_1.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_beta_training.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_beta_training.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_beta_training.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_beta_training.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_delta_BLER.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_delta_BLER.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_delta_BLER.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/polyfit_delta_BLER.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/sinr_Eff_Calc.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/sinr_Eff_Calc.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/sinr_Eff_Calc.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/sinr_Eff_Calc.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_abstraction.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_abstraction.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_abstraction.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_abstraction.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_top_script.o: openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_top_script.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_top_script.o openair1/SIMULATION/LTE_PHY/Abstraction/Training/training_top_script.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/beta_training_EESM.o: openair1/SIMULATION/LTE_PHY/Abstraction/beta_training_EESM.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/beta_training_EESM.o openair1/SIMULATION/LTE_PHY/Abstraction/beta_training_EESM.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_collection_mode5.o: openair1/SIMULATION/LTE_PHY/Abstraction/data_collection_mode5.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_collection_mode5.o openair1/SIMULATION/LTE_PHY/Abstraction/data_collection_mode5.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_extraction.o: openair1/SIMULATION/LTE_PHY/Abstraction/data_extraction.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/data_extraction.o openair1/SIMULATION/LTE_PHY/Abstraction/data_extraction.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER.o: openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER.o openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER_1.o: openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER_1.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER_1.o openair1/SIMULATION/LTE_PHY/Abstraction/delta_BLER_1.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/demap_q.o: openair1/SIMULATION/LTE_PHY/Abstraction/demap_q.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/demap_q.o openair1/SIMULATION/LTE_PHY/Abstraction/demap_q.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/opposite_q.o: openair1/SIMULATION/LTE_PHY/Abstraction/opposite_q.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/Abstraction/opposite_q.o openair1/SIMULATION/LTE_PHY/Abstraction/opposite_q.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_0.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_0.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_0.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_0.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_100.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_100.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_100.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_100.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_119.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_119.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_119.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_119.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_150.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_150.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_150.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_150.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_200.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_200.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_200.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_200.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_250.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_250.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_250.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_250.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_300.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_300.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_300.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_300.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_350.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_350.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_350.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_350.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_400.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_400.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_400.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_400.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_450.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_450.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_450.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_450.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_500.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_500.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_500.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_500.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_550.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_550.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_550.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_550.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_66.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_66.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_66.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_66.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_80.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_80.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_80.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/bler_80.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/eval_results.o: openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/eval_results.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/eval_results.o openair1/SIMULATION/LTE_PHY/BLER_SIMULATIONS/eval_results.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/LTE_Configuration.o: openair1/SIMULATION/LTE_PHY/LTE_Configuration.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/LTE_Configuration.o openair1/SIMULATION/LTE_PHY/LTE_Configuration.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms.o: openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms.o openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms_20_25.o: openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms_20_25.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms_20_25.o openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/embms_20_25.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/pdcch_20MHz_awgn.o: openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/pdcch_20MHz_awgn.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/pdcch_20MHz_awgn.o openair1/SIMULATION/LTE_PHY/REFERENCE_DATA/pdcch_20MHz_awgn.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/dlsim.o: openair1/SIMULATION/LTE_PHY/dlsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/dlsim.o openair1/SIMULATION/LTE_PHY/dlsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/framegen.o: openair1/SIMULATION/LTE_PHY/framegen.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/framegen.o openair1/SIMULATION/LTE_PHY/framegen.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/gpib_send.o: openair1/SIMULATION/LTE_PHY/gpib_send.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/gpib_send.o openair1/SIMULATION/LTE_PHY/gpib_send.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mat2wv.o: openair1/SIMULATION/LTE_PHY/mat2wv.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mat2wv.o openair1/SIMULATION/LTE_PHY/mat2wv.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mbmssim.o: openair1/SIMULATION/LTE_PHY/mbmssim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/mbmssim.o openair1/SIMULATION/LTE_PHY/mbmssim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pbchsim.o: openair1/SIMULATION/LTE_PHY/pbchsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pbchsim.o openair1/SIMULATION/LTE_PHY/pbchsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcch_eval_results.o: openair1/SIMULATION/LTE_PHY/pdcch_eval_results.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcch_eval_results.o openair1/SIMULATION/LTE_PHY/pdcch_eval_results.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcchsim.o: openair1/SIMULATION/LTE_PHY/pdcchsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pdcchsim.o openair1/SIMULATION/LTE_PHY/pdcchsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plotTool.o: openair1/SIMULATION/LTE_PHY/plotTools/plotTool.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plotTool.o openair1/SIMULATION/LTE_PHY/plotTools/plotTool.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_PePu.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_PePu.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_PePu.o openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_PePu.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_SePu.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_SePu.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_SePu.o openair1/SIMULATION/LTE_PHY/plotTools/plot_channel_SePu.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channels.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_channels.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_channels.o openair1/SIMULATION/LTE_PHY/plotTools/plot_channels.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_constellations.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_constellations.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_constellations.o openair1/SIMULATION/LTE_PHY/plotTools/plot_constellations.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ce_prec_ul.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ce_prec_ul.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ce_prec_ul.o openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ce_prec_ul.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ch_est.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ch_est.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ch_est.o openair1/SIMULATION/LTE_PHY/plotTools/plot_dl_ch_est.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_floating_point_signals.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_floating_point_signals.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_floating_point_signals.o openair1/SIMULATION/LTE_PHY/plotTools/plot_floating_point_signals.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce.o openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce_.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce_.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce_.o openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_ce_.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_prec_dl.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_prec_dl.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_prec_dl.o openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_prec_dl.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_rxF.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_rxF.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_rxF.o openair1/SIMULATION/LTE_PHY/plotTools/plot_srs_rxF.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_tx_bf.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_tx_bf.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_tx_bf.o openair1/SIMULATION/LTE_PHY/plotTools/plot_tx_bf.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_txdata.o: openair1/SIMULATION/LTE_PHY/plotTools/plot_txdata.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/plotTools/plot_txdata.o openair1/SIMULATION/LTE_PHY/plotTools/plot_txdata.m

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/prachsim.o: openair1/SIMULATION/LTE_PHY/prachsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/prachsim.o openair1/SIMULATION/LTE_PHY/prachsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsignalgenerator.o: openair1/SIMULATION/LTE_PHY/pucchsignalgenerator.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsignalgenerator.o openair1/SIMULATION/LTE_PHY/pucchsignalgenerator.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsim.o: openair1/SIMULATION/LTE_PHY/pucchsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/pucchsim.o openair1/SIMULATION/LTE_PHY/pucchsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/scansim.o: openair1/SIMULATION/LTE_PHY/scansim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/scansim.o openair1/SIMULATION/LTE_PHY/scansim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/signalanalyzer.o: openair1/SIMULATION/LTE_PHY/signalanalyzer.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/signalanalyzer.o openair1/SIMULATION/LTE_PHY/signalanalyzer.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/syncsim.o: openair1/SIMULATION/LTE_PHY/syncsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/syncsim.o openair1/SIMULATION/LTE_PHY/syncsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/test.o: openair1/SIMULATION/LTE_PHY/test.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/test.o openair1/SIMULATION/LTE_PHY/test.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsignalgenerator.o: openair1/SIMULATION/LTE_PHY/ulsignalgenerator.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsignalgenerator.o openair1/SIMULATION/LTE_PHY/ulsignalgenerator.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim.o: openair1/SIMULATION/LTE_PHY/ulsim.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim.o openair1/SIMULATION/LTE_PHY/ulsim.c

${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim2.o: openair1/SIMULATION/LTE_PHY/ulsim2.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/LTE_PHY/ulsim2.o openair1/SIMULATION/LTE_PHY/ulsim2.c

${OBJECTDIR}/openair1/SIMULATION/RF/adc.o: openair1/SIMULATION/RF/adc.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/RF
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/RF/adc.o openair1/SIMULATION/RF/adc.c

${OBJECTDIR}/openair1/SIMULATION/RF/dac.o: openair1/SIMULATION/RF/dac.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/RF
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/RF/dac.o openair1/SIMULATION/RF/dac.c

${OBJECTDIR}/openair1/SIMULATION/RF/rf.o: openair1/SIMULATION/RF/rf.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/RF
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/RF/rf.o openair1/SIMULATION/RF/rf.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/abstraction.o: openair1/SIMULATION/TOOLS/abstraction.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/abstraction.o openair1/SIMULATION/TOOLS/abstraction.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/ch_desc_proto.o: openair1/SIMULATION/TOOLS/ch_desc_proto.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/ch_desc_proto.o openair1/SIMULATION/TOOLS/ch_desc_proto.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/corr_mat.o: openair1/SIMULATION/TOOLS/corr_mat.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/corr_mat.o openair1/SIMULATION/TOOLS/corr_mat.m

${OBJECTDIR}/openair1/SIMULATION/TOOLS/gauss.o: openair1/SIMULATION/TOOLS/gauss.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/gauss.o openair1/SIMULATION/TOOLS/gauss.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/llr_quantization.o: openair1/SIMULATION/TOOLS/llr_quantization.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/llr_quantization.o openair1/SIMULATION/TOOLS/llr_quantization.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_channel.o: openair1/SIMULATION/TOOLS/multipath_channel.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_channel.o openair1/SIMULATION/TOOLS/multipath_channel.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_tv_channel.o: openair1/SIMULATION/TOOLS/multipath_tv_channel.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/multipath_tv_channel.o openair1/SIMULATION/TOOLS/multipath_tv_channel.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/random_channel.o: openair1/SIMULATION/TOOLS/random_channel.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/random_channel.o openair1/SIMULATION/TOOLS/random_channel.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/rangen_double.o: openair1/SIMULATION/TOOLS/rangen_double.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/rangen_double.o openair1/SIMULATION/TOOLS/rangen_double.c

${OBJECTDIR}/openair1/SIMULATION/TOOLS/scm.o: openair1/SIMULATION/TOOLS/scm.m 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/scm.o openair1/SIMULATION/TOOLS/scm.m

${OBJECTDIR}/openair1/SIMULATION/TOOLS/taus.o: openair1/SIMULATION/TOOLS/taus.c 
	${MKDIR} -p ${OBJECTDIR}/openair1/SIMULATION/TOOLS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair1/SIMULATION/TOOLS/taus.o openair1/SIMULATION/TOOLS/taus.c

${OBJECTDIR}/openair2/ENB_APP/enb_app.o: openair2/ENB_APP/enb_app.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/ENB_APP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/ENB_APP/enb_app.o openair2/ENB_APP/enb_app.c

${OBJECTDIR}/openair2/ENB_APP/enb_config.o: openair2/ENB_APP/enb_config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/ENB_APP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/ENB_APP/enb_config.o openair2/ENB_APP/enb_config.c

${OBJECTDIR}/openair2/LAYER2/MAC/config.o: openair2/LAYER2/MAC/config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/config.o openair2/LAYER2/MAC/config.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler.o: openair2/LAYER2/MAC/eNB_scheduler.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler.o openair2/LAYER2/MAC/eNB_scheduler.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_RA.o: openair2/LAYER2/MAC/eNB_scheduler_RA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_RA.o openair2/LAYER2/MAC/eNB_scheduler_RA.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_bch.o: openair2/LAYER2/MAC/eNB_scheduler_bch.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_bch.o openair2/LAYER2/MAC/eNB_scheduler_bch.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_dlsch.o: openair2/LAYER2/MAC/eNB_scheduler_dlsch.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_dlsch.o openair2/LAYER2/MAC/eNB_scheduler_dlsch.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_mch.o: openair2/LAYER2/MAC/eNB_scheduler_mch.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_mch.o openair2/LAYER2/MAC/eNB_scheduler_mch.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_primitives.o: openair2/LAYER2/MAC/eNB_scheduler_primitives.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_primitives.o openair2/LAYER2/MAC/eNB_scheduler_primitives.c

${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_ulsch.o: openair2/LAYER2/MAC/eNB_scheduler_ulsch.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/eNB_scheduler_ulsch.o openair2/LAYER2/MAC/eNB_scheduler_ulsch.c

${OBJECTDIR}/openair2/LAYER2/MAC/l1_helpers.o: openair2/LAYER2/MAC/l1_helpers.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/l1_helpers.o openair2/LAYER2/MAC/l1_helpers.c

${OBJECTDIR}/openair2/LAYER2/MAC/lte_transport_init.o: openair2/LAYER2/MAC/lte_transport_init.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/lte_transport_init.o openair2/LAYER2/MAC/lte_transport_init.c

${OBJECTDIR}/openair2/LAYER2/MAC/main.o: openair2/LAYER2/MAC/main.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/main.o openair2/LAYER2/MAC/main.c

${OBJECTDIR}/openair2/LAYER2/MAC/openair2_proc.o: openair2/LAYER2/MAC/openair2_proc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/openair2_proc.o openair2/LAYER2/MAC/openair2_proc.c

${OBJECTDIR}/openair2/LAYER2/MAC/pre_processor.o: openair2/LAYER2/MAC/pre_processor.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/pre_processor.o openair2/LAYER2/MAC/pre_processor.c

${OBJECTDIR}/openair2/LAYER2/MAC/ra_procedures.o: openair2/LAYER2/MAC/ra_procedures.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/ra_procedures.o openair2/LAYER2/MAC/ra_procedures.c

${OBJECTDIR}/openair2/LAYER2/MAC/rar_tools.o: openair2/LAYER2/MAC/rar_tools.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/rar_tools.o openair2/LAYER2/MAC/rar_tools.c

${OBJECTDIR}/openair2/LAYER2/MAC/ue_procedures.o: openair2/LAYER2/MAC/ue_procedures.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/MAC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/MAC/ue_procedures.o openair2/LAYER2/MAC/ue_procedures.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp.o: openair2/LAYER2/PDCP_v10.1.0/pdcp.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp.o openair2/LAYER2/PDCP_v10.1.0/pdcp.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_control_primitive.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_control_primitive.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_control_primitive.o openair2/LAYER2/PDCP_v10.1.0/pdcp_control_primitive.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_fifo.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_fifo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_fifo.o openair2/LAYER2/PDCP_v10.1.0/pdcp_fifo.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_netlink.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_netlink.o openair2/LAYER2/PDCP_v10.1.0/pdcp_netlink.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_primitives.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_primitives.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_primitives.o openair2/LAYER2/PDCP_v10.1.0/pdcp_primitives.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_security.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_security.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_security.o openair2/LAYER2/PDCP_v10.1.0/pdcp_security.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_sequence_manager.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_sequence_manager.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_sequence_manager.o openair2/LAYER2/PDCP_v10.1.0/pdcp_sequence_manager.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_thread.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_thread.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_thread.o openair2/LAYER2/PDCP_v10.1.0/pdcp_thread.c

${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_util.o: openair2/LAYER2/PDCP_v10.1.0/pdcp_util.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/PDCP_v10.1.0/pdcp_util.o openair2/LAYER2/PDCP_v10.1.0/pdcp_util.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_in_sdu.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_in_sdu.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_in_sdu.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_in_sdu.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_init.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_init.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_init.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_init.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_reassembly.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_reassembly.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_reassembly.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_reassembly.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_receiver.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_receiver.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_receiver.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_receiver.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_retransmit.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_retransmit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_retransmit.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_retransmit.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_rx_list.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_rx_list.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_rx_list.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_rx_list.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segment.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segment.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segment.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segment.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segments_holes.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segments_holes.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segments_holes.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_segments_holes.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_status_report.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_status_report.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_status_report.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_status_report.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_test.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_test.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_test.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_test.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_poll_retransmit.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_poll_retransmit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_poll_retransmit.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_poll_retransmit.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_reordering.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_reordering.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_reordering.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_reordering.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_status_prohibit.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_status_prohibit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_status_prohibit.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_timer_status_prohibit.c

${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_windows.o: openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_windows.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_windows.o openair2/LAYER2/RLC/AM_v9.3.0/rlc_am_windows.c

${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm.o: openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm.o openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm.c

${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm_init.o: openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm_init.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm_init.o openair2/LAYER2/RLC/TM_v9.3.0/rlc_tm_init.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_control_primitives.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_control_primitives.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_control_primitives.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_control_primitives.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_dar.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_dar.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_dar.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_dar.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_fsm.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_fsm.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_fsm.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_fsm.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_reassembly.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_reassembly.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_reassembly.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_reassembly.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_receiver.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_receiver.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_receiver.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_receiver.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_segment.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_segment.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_segment.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_segment.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_test.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_test.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_test.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_test.c

${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_very_simple_test.o: openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_very_simple_test.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_very_simple_test.o openair2/LAYER2/RLC/UM_v9.3.0/rlc_um_very_simple_test.c

${OBJECTDIR}/openair2/LAYER2/RLC/rlc.o: openair2/LAYER2/RLC/rlc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/rlc.o openair2/LAYER2/RLC/rlc.c

${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mac.o: openair2/LAYER2/RLC/rlc_mac.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mac.o openair2/LAYER2/RLC/rlc_mac.c

${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mpls.o: openair2/LAYER2/RLC/rlc_mpls.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/rlc_mpls.o openair2/LAYER2/RLC/rlc_mpls.c

${OBJECTDIR}/openair2/LAYER2/RLC/rlc_rrc.o: openair2/LAYER2/RLC/rlc_rrc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2/RLC
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/RLC/rlc_rrc.o openair2/LAYER2/RLC/rlc_rrc.c

${OBJECTDIR}/openair2/LAYER2/layer2_top.o: openair2/LAYER2/layer2_top.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/layer2_top.o openair2/LAYER2/layer2_top.c

${OBJECTDIR}/openair2/LAYER2/openair2_proc.o: openair2/LAYER2/openair2_proc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/openair2_proc.o openair2/LAYER2/openair2_proc.c

${OBJECTDIR}/openair2/LAYER2/register.o: openair2/LAYER2/register.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/LAYER2
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/LAYER2/register.o openair2/LAYER2/register.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/CTL_TOOL/nascell_ioctl.o: openair2/NAS/DRIVER/CELLULAR/CTL_TOOL/nascell_ioctl.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/CTL_TOOL
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/CTL_TOOL/nascell_ioctl.o openair2/NAS/DRIVER/CELLULAR/CTL_TOOL/nascell_ioctl.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_ascontrol.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_ascontrol.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_ascontrol.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_ascontrol.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_classifier.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_classifier.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_classifier.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_classifier.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_common.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_common.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_common.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_device.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_device.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_device.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_device.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_iocontrol.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_iocontrol.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_iocontrol.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_iocontrol.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_netlink.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_netlink.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_netlink.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_tool.o: openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_tool.o openair2/NAS/DRIVER/CELLULAR/NASMT/nasmt_tool.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_ascontrol.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_ascontrol.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_ascontrol.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_ascontrol.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_classifier.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_classifier.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_classifier.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_classifier.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_common.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_common.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_common.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_device.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_device.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_device.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_device.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_iocontrol.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_iocontrol.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_iocontrol.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_iocontrol.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_netlink.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_netlink.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_netlink.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_tool.o: openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_tool.o openair2/NAS/DRIVER/CELLULAR/NASRG/nasrg_tool.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/netltest.o: openair2/NAS/DRIVER/CELLULAR/NETLTEST/netltest.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/netltest.o openair2/NAS/DRIVER/CELLULAR/NETLTEST/netltest.c

${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/nettestPDCP.o: openair2/NAS/DRIVER/CELLULAR/NETLTEST/nettestPDCP.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/DRIVER/CELLULAR/NETLTEST/nettestPDCP.o openair2/NAS/DRIVER/CELLULAR/NETLTEST/nettestPDCP.c

${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/nasrg_simu_meas.o: openair2/NAS/SIMU_CELLULAR/nasrg_simu_meas.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/nasrg_simu_meas.o openair2/NAS/SIMU_CELLULAR/nasrg_simu_meas.c

${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/rrm_fifo_standalone.o: openair2/NAS/SIMU_CELLULAR/rrm_fifo_standalone.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NAS/SIMU_CELLULAR/rrm_fifo_standalone.o openair2/NAS/SIMU_CELLULAR/rrm_fifo_standalone.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/RB_TOOL/rb_tool.o: openair2/NETWORK_DRIVER/LITE/RB_TOOL/rb_tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/RB_TOOL
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/RB_TOOL/rb_tool.o openair2/NETWORK_DRIVER/LITE/RB_TOOL/rb_tool.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/classifier.o: openair2/NETWORK_DRIVER/LITE/classifier.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/classifier.o openair2/NETWORK_DRIVER/LITE/classifier.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/common.o: openair2/NETWORK_DRIVER/LITE/common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/common.o openair2/NETWORK_DRIVER/LITE/common.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/device.o: openair2/NETWORK_DRIVER/LITE/device.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/device.o openair2/NETWORK_DRIVER/LITE/device.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/ioctl.o: openair2/NETWORK_DRIVER/LITE/ioctl.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/ioctl.o openair2/NETWORK_DRIVER/LITE/ioctl.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/netlink.o: openair2/NETWORK_DRIVER/LITE/netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/netlink.o openair2/NETWORK_DRIVER/LITE/netlink.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/tool.o: openair2/NETWORK_DRIVER/LITE/tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/LITE/tool.o openair2/NETWORK_DRIVER/LITE/tool.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/RB_TOOL/rb_tool.o: openair2/NETWORK_DRIVER/MESH/RB_TOOL/rb_tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/RB_TOOL
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/RB_TOOL/rb_tool.o openair2/NETWORK_DRIVER/MESH/RB_TOOL/rb_tool.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/TESTBENCH/testbench.o: openair2/NETWORK_DRIVER/MESH/TESTBENCH/testbench.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/TESTBENCH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/TESTBENCH/testbench.o openair2/NETWORK_DRIVER/MESH/TESTBENCH/testbench.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/classifier.o: openair2/NETWORK_DRIVER/MESH/classifier.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/classifier.o openair2/NETWORK_DRIVER/MESH/classifier.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/common.o: openair2/NETWORK_DRIVER/MESH/common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/common.o openair2/NETWORK_DRIVER/MESH/common.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/device.o: openair2/NETWORK_DRIVER/MESH/device.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/device.o openair2/NETWORK_DRIVER/MESH/device.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/ioctl.o: openair2/NETWORK_DRIVER/MESH/ioctl.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/ioctl.o openair2/NETWORK_DRIVER/MESH/ioctl.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/mesh.o: openair2/NETWORK_DRIVER/MESH/mesh.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/mesh.o openair2/NETWORK_DRIVER/MESH/mesh.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/netlink.o: openair2/NETWORK_DRIVER/MESH/netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/netlink.o openair2/NETWORK_DRIVER/MESH/netlink.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/tool.o: openair2/NETWORK_DRIVER/MESH/tool.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/MESH/tool.o openair2/NETWORK_DRIVER/MESH/tool.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/common.o: openair2/NETWORK_DRIVER/UE_IP/common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/common.o openair2/NETWORK_DRIVER/UE_IP/common.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/device.o: openair2/NETWORK_DRIVER/UE_IP/device.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/device.o openair2/NETWORK_DRIVER/UE_IP/device.c

${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/netlink.o: openair2/NETWORK_DRIVER/UE_IP/netlink.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/NETWORK_DRIVER/UE_IP/netlink.o openair2/NETWORK_DRIVER/UE_IP/netlink.c

${OBJECTDIR}/openair2/PHY_INTERFACE/mac_phy_primitives.o: openair2/PHY_INTERFACE/mac_phy_primitives.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/PHY_INTERFACE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/PHY_INTERFACE/mac_phy_primitives.o openair2/PHY_INTERFACE/mac_phy_primitives.c

${OBJECTDIR}/openair2/RRC/L2_INTERFACE/openair_rrc_L2_interface.o: openair2/RRC/L2_INTERFACE/openair_rrc_L2_interface.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/L2_INTERFACE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/L2_INTERFACE/openair_rrc_L2_interface.o openair2/RRC/L2_INTERFACE/openair_rrc_L2_interface.c

${OBJECTDIR}/openair2/RRC/LITE/L2_interface.o: openair2/RRC/LITE/L2_interface.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/L2_interface.o openair2/RRC/LITE/L2_interface.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AC-BarringConfig.o: openair2/RRC/LITE/MESSAGES/AC-BarringConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AC-BarringConfig.o openair2/RRC/LITE/MESSAGES/AC-BarringConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueCDMA2000.o: openair2/RRC/LITE/MESSAGES/ARFCN-ValueCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueCDMA2000.o openair2/RRC/LITE/MESSAGES/ARFCN-ValueCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueEUTRA.o: openair2/RRC/LITE/MESSAGES/ARFCN-ValueEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueEUTRA.o openair2/RRC/LITE/MESSAGES/ARFCN-ValueEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueGERAN.o: openair2/RRC/LITE/MESSAGES/ARFCN-ValueGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueGERAN.o openair2/RRC/LITE/MESSAGES/ARFCN-ValueGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueUTRA.o: openair2/RRC/LITE/MESSAGES/ARFCN-ValueUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ARFCN-ValueUTRA.o openair2/RRC/LITE/MESSAGES/ARFCN-ValueUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Config.o: openair2/RRC/LITE/MESSAGES/AS-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Config.o openair2/RRC/LITE/MESSAGES/AS-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Context.o: openair2/RRC/LITE/MESSAGES/AS-Context.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AS-Context.o openair2/RRC/LITE/MESSAGES/AS-Context.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AccessStratumRelease.o: openair2/RRC/LITE/MESSAGES/AccessStratumRelease.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AccessStratumRelease.o openair2/RRC/LITE/MESSAGES/AccessStratumRelease.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfo.o: openair2/RRC/LITE/MESSAGES/AdditionalReestabInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfo.o openair2/RRC/LITE/MESSAGES/AdditionalReestabInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfoList.o: openair2/RRC/LITE/MESSAGES/AdditionalReestabInfoList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalReestabInfoList.o openair2/RRC/LITE/MESSAGES/AdditionalReestabInfoList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalSpectrumEmission.o: openair2/RRC/LITE/MESSAGES/AdditionalSpectrumEmission.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AdditionalSpectrumEmission.o openair2/RRC/LITE/MESSAGES/AdditionalSpectrumEmission.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AllowedMeasBandwidth.o: openair2/RRC/LITE/MESSAGES/AllowedMeasBandwidth.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AllowedMeasBandwidth.o openair2/RRC/LITE/MESSAGES/AllowedMeasBandwidth.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoCommon.o: openair2/RRC/LITE/MESSAGES/AntennaInfoCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoCommon.o openair2/RRC/LITE/MESSAGES/AntennaInfoCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoDedicated.o: openair2/RRC/LITE/MESSAGES/AntennaInfoDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/AntennaInfoDedicated.o openair2/RRC/LITE/MESSAGES/AntennaInfoDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-Message.o: openair2/RRC/LITE/MESSAGES/BCCH-BCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-Message.o openair2/RRC/LITE/MESSAGES/BCCH-BCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-MessageType.o: openair2/RRC/LITE/MESSAGES/BCCH-BCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-BCH-MessageType.o openair2/RRC/LITE/MESSAGES/BCCH-BCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-Config.o: openair2/RRC/LITE/MESSAGES/BCCH-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-Config.o openair2/RRC/LITE/MESSAGES/BCCH-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-Message.o: openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-Message.o openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-MessageType.o: openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-MessageType.o openair2/RRC/LITE/MESSAGES/BCCH-DL-SCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BIT_STRING.o: openair2/RRC/LITE/MESSAGES/BIT_STRING.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BIT_STRING.o openair2/RRC/LITE/MESSAGES/BIT_STRING.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BOOLEAN.o: openair2/RRC/LITE/MESSAGES/BOOLEAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BOOLEAN.o openair2/RRC/LITE/MESSAGES/BOOLEAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassInfoCDMA2000.o: openair2/RRC/LITE/MESSAGES/BandClassInfoCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassInfoCDMA2000.o openair2/RRC/LITE/MESSAGES/BandClassInfoCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassListCDMA2000.o: openair2/RRC/LITE/MESSAGES/BandClassListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassListCDMA2000.o openair2/RRC/LITE/MESSAGES/BandClassListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriority1XRTT.o: openair2/RRC/LITE/MESSAGES/BandClassPriority1XRTT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriority1XRTT.o openair2/RRC/LITE/MESSAGES/BandClassPriority1XRTT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityHRPD.o: openair2/RRC/LITE/MESSAGES/BandClassPriorityHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityHRPD.o openair2/RRC/LITE/MESSAGES/BandClassPriorityHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityList1XRTT.o: openair2/RRC/LITE/MESSAGES/BandClassPriorityList1XRTT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityList1XRTT.o openair2/RRC/LITE/MESSAGES/BandClassPriorityList1XRTT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityListHRPD.o: openair2/RRC/LITE/MESSAGES/BandClassPriorityListHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandClassPriorityListHRPD.o openair2/RRC/LITE/MESSAGES/BandClassPriorityListHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandIndicatorGERAN.o: openair2/RRC/LITE/MESSAGES/BandIndicatorGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandIndicatorGERAN.o openair2/RRC/LITE/MESSAGES/BandIndicatorGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandInfoEUTRA.o: openair2/RRC/LITE/MESSAGES/BandInfoEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandInfoEUTRA.o openair2/RRC/LITE/MESSAGES/BandInfoEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandListEUTRA.o: openair2/RRC/LITE/MESSAGES/BandListEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandListEUTRA.o openair2/RRC/LITE/MESSAGES/BandListEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandclassCDMA2000.o: openair2/RRC/LITE/MESSAGES/BandclassCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BandclassCDMA2000.o openair2/RRC/LITE/MESSAGES/BandclassCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddMod.o: openair2/RRC/LITE/MESSAGES/BlackCellsToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddMod.o openair2/RRC/LITE/MESSAGES/BlackCellsToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddModList.o: openair2/RRC/LITE/MESSAGES/BlackCellsToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/BlackCellsToAddModList.o openair2/RRC/LITE/MESSAGES/BlackCellsToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/C-RNTI.o: openair2/RRC/LITE/MESSAGES/C-RNTI.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/C-RNTI.o openair2/RRC/LITE/MESSAGES/C-RNTI.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CDMA2000-Type.o: openair2/RRC/LITE/MESSAGES/CDMA2000-Type.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CDMA2000-Type.o openair2/RRC/LITE/MESSAGES/CDMA2000-Type.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportConfig.o: openair2/RRC/LITE/MESSAGES/CQI-ReportConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportConfig.o openair2/RRC/LITE/MESSAGES/CQI-ReportConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportPeriodic.o: openair2/RRC/LITE/MESSAGES/CQI-ReportPeriodic.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CQI-ReportPeriodic.o openair2/RRC/LITE/MESSAGES/CQI-ReportPeriodic.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFB-RegistrationParam1XRTT.o: openair2/RRC/LITE/MESSAGES/CSFB-RegistrationParam1XRTT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFB-RegistrationParam1XRTT.o openair2/RRC/LITE/MESSAGES/CSFB-RegistrationParam1XRTT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000-r8-IEs.o: openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000-r8-IEs.o openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000.o: openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000.o openair2/RRC/LITE/MESSAGES/CSFBParametersRequestCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000-r8-IEs.o: openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000-r8-IEs.o openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000.o: openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000.o openair2/RRC/LITE/MESSAGES/CSFBParametersResponseCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierBandwidthEUTRA.o: openair2/RRC/LITE/MESSAGES/CarrierBandwidthEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierBandwidthEUTRA.o openair2/RRC/LITE/MESSAGES/CarrierBandwidthEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqCDMA2000.o: openair2/RRC/LITE/MESSAGES/CarrierFreqCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqCDMA2000.o openair2/RRC/LITE/MESSAGES/CarrierFreqCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqEUTRA.o: openair2/RRC/LITE/MESSAGES/CarrierFreqEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqEUTRA.o openair2/RRC/LITE/MESSAGES/CarrierFreqEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqGERAN.o: openair2/RRC/LITE/MESSAGES/CarrierFreqGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqGERAN.o openair2/RRC/LITE/MESSAGES/CarrierFreqGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-FDD.o openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-TDD.o openair2/RRC/LITE/MESSAGES/CarrierFreqListUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-FDD.o openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-TDD.o openair2/RRC/LITE/MESSAGES/CarrierFreqUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsGERAN.o: openair2/RRC/LITE/MESSAGES/CarrierFreqsGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsGERAN.o openair2/RRC/LITE/MESSAGES/CarrierFreqsGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoGERAN.o: openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoGERAN.o openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoListGERAN.o: openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoListGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoListGERAN.o openair2/RRC/LITE/MESSAGES/CarrierFreqsInfoListGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellChangeOrder.o: openair2/RRC/LITE/MESSAGES/CellChangeOrder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellChangeOrder.o openair2/RRC/LITE/MESSAGES/CellChangeOrder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdCDMA2000.o: openair2/RRC/LITE/MESSAGES/CellGlobalIdCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdCDMA2000.o openair2/RRC/LITE/MESSAGES/CellGlobalIdCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdEUTRA.o: openair2/RRC/LITE/MESSAGES/CellGlobalIdEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdEUTRA.o openair2/RRC/LITE/MESSAGES/CellGlobalIdEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdGERAN.o: openair2/RRC/LITE/MESSAGES/CellGlobalIdGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdGERAN.o openair2/RRC/LITE/MESSAGES/CellGlobalIdGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdUTRA.o: openair2/RRC/LITE/MESSAGES/CellGlobalIdUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellGlobalIdUTRA.o openair2/RRC/LITE/MESSAGES/CellGlobalIdUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIdentity.o: openair2/RRC/LITE/MESSAGES/CellIdentity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIdentity.o openair2/RRC/LITE/MESSAGES/CellIdentity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndex.o: openair2/RRC/LITE/MESSAGES/CellIndex.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndex.o openair2/RRC/LITE/MESSAGES/CellIndex.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndexList.o: openair2/RRC/LITE/MESSAGES/CellIndexList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellIndexList.o openair2/RRC/LITE/MESSAGES/CellIndexList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionParametersCDMA2000.o: openair2/RRC/LITE/MESSAGES/CellReselectionParametersCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionParametersCDMA2000.o openair2/RRC/LITE/MESSAGES/CellReselectionParametersCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionPriority.o: openair2/RRC/LITE/MESSAGES/CellReselectionPriority.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellReselectionPriority.o openair2/RRC/LITE/MESSAGES/CellReselectionPriority.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddMod.o: openair2/RRC/LITE/MESSAGES/CellsToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddMod.o openair2/RRC/LITE/MESSAGES/CellsToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModCDMA2000.o: openair2/RRC/LITE/MESSAGES/CellsToAddModCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModCDMA2000.o openair2/RRC/LITE/MESSAGES/CellsToAddModCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModList.o: openair2/RRC/LITE/MESSAGES/CellsToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModList.o openair2/RRC/LITE/MESSAGES/CellsToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListCDMA2000.o: openair2/RRC/LITE/MESSAGES/CellsToAddModListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListCDMA2000.o openair2/RRC/LITE/MESSAGES/CellsToAddModListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-FDD.o openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-TDD.o openair2/RRC/LITE/MESSAGES/CellsToAddModListUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-FDD.o openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-TDD.o openair2/RRC/LITE/MESSAGES/CellsToAddModUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck-r8-IEs.o: openair2/RRC/LITE/MESSAGES/CounterCheck-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck-r8-IEs.o openair2/RRC/LITE/MESSAGES/CounterCheck-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck.o: openair2/RRC/LITE/MESSAGES/CounterCheck.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheck.o openair2/RRC/LITE/MESSAGES/CounterCheck.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse-r8-IEs.o: openair2/RRC/LITE/MESSAGES/CounterCheckResponse-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse-r8-IEs.o openair2/RRC/LITE/MESSAGES/CounterCheckResponse-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse.o: openair2/RRC/LITE/MESSAGES/CounterCheckResponse.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/CounterCheckResponse.o openair2/RRC/LITE/MESSAGES/CounterCheckResponse.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-AM-RLC.o: openair2/RRC/LITE/MESSAGES/DL-AM-RLC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-AM-RLC.o openair2/RRC/LITE/MESSAGES/DL-AM-RLC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-Message.o: openair2/RRC/LITE/MESSAGES/DL-CCCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-Message.o openair2/RRC/LITE/MESSAGES/DL-CCCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-MessageType.o: openair2/RRC/LITE/MESSAGES/DL-CCCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-CCCH-MessageType.o openair2/RRC/LITE/MESSAGES/DL-CCCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-Message.o: openair2/RRC/LITE/MESSAGES/DL-DCCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-Message.o openair2/RRC/LITE/MESSAGES/DL-DCCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-MessageType.o: openair2/RRC/LITE/MESSAGES/DL-DCCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-DCCH-MessageType.o openair2/RRC/LITE/MESSAGES/DL-DCCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-UM-RLC.o: openair2/RRC/LITE/MESSAGES/DL-UM-RLC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DL-UM-RLC.o openair2/RRC/LITE/MESSAGES/DL-UM-RLC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer-r8-IEs.o: openair2/RRC/LITE/MESSAGES/DLInformationTransfer-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer-r8-IEs.o openair2/RRC/LITE/MESSAGES/DLInformationTransfer-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer.o: openair2/RRC/LITE/MESSAGES/DLInformationTransfer.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DLInformationTransfer.o openair2/RRC/LITE/MESSAGES/DLInformationTransfer.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfo.o: openair2/RRC/LITE/MESSAGES/DRB-CountInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfo.o openair2/RRC/LITE/MESSAGES/DRB-CountInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfoList.o: openair2/RRC/LITE/MESSAGES/DRB-CountInfoList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountInfoList.o openair2/RRC/LITE/MESSAGES/DRB-CountInfoList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-Info.o: openair2/RRC/LITE/MESSAGES/DRB-CountMSB-Info.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-Info.o openair2/RRC/LITE/MESSAGES/DRB-CountMSB-Info.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-InfoList.o: openair2/RRC/LITE/MESSAGES/DRB-CountMSB-InfoList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-CountMSB-InfoList.o openair2/RRC/LITE/MESSAGES/DRB-CountMSB-InfoList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-Identity.o: openair2/RRC/LITE/MESSAGES/DRB-Identity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-Identity.o openair2/RRC/LITE/MESSAGES/DRB-Identity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddMod.o: openair2/RRC/LITE/MESSAGES/DRB-ToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddMod.o openair2/RRC/LITE/MESSAGES/DRB-ToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddModList.o: openair2/RRC/LITE/MESSAGES/DRB-ToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToAddModList.o openair2/RRC/LITE/MESSAGES/DRB-ToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToReleaseList.o: openair2/RRC/LITE/MESSAGES/DRB-ToReleaseList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRB-ToReleaseList.o openair2/RRC/LITE/MESSAGES/DRB-ToReleaseList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRX-Config.o: openair2/RRC/LITE/MESSAGES/DRX-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DRX-Config.o openair2/RRC/LITE/MESSAGES/DRX-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoCDMA2000.o: openair2/RRC/LITE/MESSAGES/DedicatedInfoCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoCDMA2000.o openair2/RRC/LITE/MESSAGES/DedicatedInfoCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoNAS.o: openair2/RRC/LITE/MESSAGES/DedicatedInfoNAS.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DedicatedInfoNAS.o openair2/RRC/LITE/MESSAGES/DedicatedInfoNAS.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DeltaFList-PUCCH.o: openair2/RRC/LITE/MESSAGES/DeltaFList-PUCCH.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/DeltaFList-PUCCH.o openair2/RRC/LITE/MESSAGES/DeltaFList-PUCCH.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/EstablishmentCause.o: openair2/RRC/LITE/MESSAGES/EstablishmentCause.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/EstablishmentCause.o openair2/RRC/LITE/MESSAGES/EstablishmentCause.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ExplicitListOfARFCNs.o: openair2/RRC/LITE/MESSAGES/ExplicitListOfARFCNs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ExplicitListOfARFCNs.o openair2/RRC/LITE/MESSAGES/ExplicitListOfARFCNs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FilterCoefficient.o: openair2/RRC/LITE/MESSAGES/FilterCoefficient.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FilterCoefficient.o openair2/RRC/LITE/MESSAGES/FilterCoefficient.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityEUTRA.o: openair2/RRC/LITE/MESSAGES/FreqPriorityEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityEUTRA.o openair2/RRC/LITE/MESSAGES/FreqPriorityEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListEUTRA.o: openair2/RRC/LITE/MESSAGES/FreqPriorityListEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListEUTRA.o openair2/RRC/LITE/MESSAGES/FreqPriorityListEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-FDD.o openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-TDD.o openair2/RRC/LITE/MESSAGES/FreqPriorityListUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-FDD.o openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-TDD.o openair2/RRC/LITE/MESSAGES/FreqPriorityUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityGERAN.o: openair2/RRC/LITE/MESSAGES/FreqsPriorityGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityGERAN.o openair2/RRC/LITE/MESSAGES/FreqsPriorityGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityListGERAN.o: openair2/RRC/LITE/MESSAGES/FreqsPriorityListGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/FreqsPriorityListGERAN.o openair2/RRC/LITE/MESSAGES/FreqsPriorityListGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Handover.o: openair2/RRC/LITE/MESSAGES/Handover.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Handover.o openair2/RRC/LITE/MESSAGES/Handover.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand-r8-IEs.o: openair2/RRC/LITE/MESSAGES/HandoverCommand-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand-r8-IEs.o openair2/RRC/LITE/MESSAGES/HandoverCommand-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand.o: openair2/RRC/LITE/MESSAGES/HandoverCommand.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverCommand.o openair2/RRC/LITE/MESSAGES/HandoverCommand.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest-r8-IEs.o: openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest-r8-IEs.o openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest.o: openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest.o openair2/RRC/LITE/MESSAGES/HandoverFromEUTRAPreparationRequest.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation-r8-IEs.o: openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation-r8-IEs.o openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation.o: openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation.o openair2/RRC/LITE/MESSAGES/HandoverPreparationInformation.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Hysteresis.o: openair2/RRC/LITE/MESSAGES/Hysteresis.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Hysteresis.o openair2/RRC/LITE/MESSAGES/Hysteresis.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI-Digit.o: openair2/RRC/LITE/MESSAGES/IMSI-Digit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI-Digit.o openair2/RRC/LITE/MESSAGES/IMSI-Digit.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI.o: openair2/RRC/LITE/MESSAGES/IMSI.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IMSI.o openair2/RRC/LITE/MESSAGES/IMSI.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/INTEGER.o: openair2/RRC/LITE/MESSAGES/INTEGER.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/INTEGER.o openair2/RRC/LITE/MESSAGES/INTEGER.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-1XRTT.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-1XRTT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-1XRTT.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-1XRTT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-HRPD.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-HRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-HRPD.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersCDMA2000-HRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersGERAN.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersGERAN.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-FDD.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD128.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD128.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD128.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD128.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD384.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD384.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD384.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD384.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD768.o: openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD768.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD768.o openair2/RRC/LITE/MESSAGES/IRAT-ParametersUTRA-TDD768.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IdleModeMobilityControlInfo.o: openair2/RRC/LITE/MESSAGES/IdleModeMobilityControlInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IdleModeMobilityControlInfo.o openair2/RRC/LITE/MESSAGES/IdleModeMobilityControlInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InitialUE-Identity.o: openair2/RRC/LITE/MESSAGES/InitialUE-Identity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InitialUE-Identity.o openair2/RRC/LITE/MESSAGES/InitialUE-Identity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandInfo.o: openair2/RRC/LITE/MESSAGES/InterFreqBandInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandInfo.o openair2/RRC/LITE/MESSAGES/InterFreqBandInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandList.o: openair2/RRC/LITE/MESSAGES/InterFreqBandList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBandList.o openair2/RRC/LITE/MESSAGES/InterFreqBandList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBlackCellList.o: openair2/RRC/LITE/MESSAGES/InterFreqBlackCellList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqBlackCellList.o openair2/RRC/LITE/MESSAGES/InterFreqBlackCellList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqInfo.o: openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqInfo.o openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqList.o: openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqList.o openair2/RRC/LITE/MESSAGES/InterFreqCarrierFreqList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellInfo.o: openair2/RRC/LITE/MESSAGES/InterFreqNeighCellInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellInfo.o openair2/RRC/LITE/MESSAGES/InterFreqNeighCellInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellList.o: openair2/RRC/LITE/MESSAGES/InterFreqNeighCellList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterFreqNeighCellList.o openair2/RRC/LITE/MESSAGES/InterFreqNeighCellList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandInfo.o: openair2/RRC/LITE/MESSAGES/InterRAT-BandInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandInfo.o openair2/RRC/LITE/MESSAGES/InterRAT-BandInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandList.o: openair2/RRC/LITE/MESSAGES/InterRAT-BandList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/InterRAT-BandList.o openair2/RRC/LITE/MESSAGES/InterRAT-BandList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqBlackCellList.o: openair2/RRC/LITE/MESSAGES/IntraFreqBlackCellList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqBlackCellList.o openair2/RRC/LITE/MESSAGES/IntraFreqBlackCellList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellInfo.o: openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellInfo.o openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellList.o: openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellList.o openair2/RRC/LITE/MESSAGES/IntraFreqNeighCellList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Key-eNodeB-Star.o: openair2/RRC/LITE/MESSAGES/Key-eNodeB-Star.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Key-eNodeB-Star.o openair2/RRC/LITE/MESSAGES/Key-eNodeB-Star.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/LogicalChannelConfig.o: openair2/RRC/LITE/MESSAGES/LogicalChannelConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/LogicalChannelConfig.o openair2/RRC/LITE/MESSAGES/LogicalChannelConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MAC-MainConfig.o: openair2/RRC/LITE/MESSAGES/MAC-MainConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MAC-MainConfig.o openair2/RRC/LITE/MESSAGES/MAC-MainConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfig.o: openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfig.o openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfigList.o: openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfigList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfigList.o openair2/RRC/LITE/MESSAGES/MBSFN-SubframeConfigList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC-MNC-Digit.o: openair2/RRC/LITE/MESSAGES/MCC-MNC-Digit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC-MNC-Digit.o openair2/RRC/LITE/MESSAGES/MCC-MNC-Digit.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC.o: openair2/RRC/LITE/MESSAGES/MCC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MCC.o openair2/RRC/LITE/MESSAGES/MCC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MMEC.o: openair2/RRC/LITE/MESSAGES/MMEC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MMEC.o openair2/RRC/LITE/MESSAGES/MMEC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MNC.o: openair2/RRC/LITE/MESSAGES/MNC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MNC.o openair2/RRC/LITE/MESSAGES/MNC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MasterInformationBlock.o: openair2/RRC/LITE/MESSAGES/MasterInformationBlock.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MasterInformationBlock.o openair2/RRC/LITE/MESSAGES/MasterInformationBlock.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasConfig.o: openair2/RRC/LITE/MESSAGES/MeasConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasConfig.o openair2/RRC/LITE/MESSAGES/MeasConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasGapConfig.o: openair2/RRC/LITE/MESSAGES/MeasGapConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasGapConfig.o openair2/RRC/LITE/MESSAGES/MeasGapConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasId.o: openair2/RRC/LITE/MESSAGES/MeasId.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasId.o openair2/RRC/LITE/MESSAGES/MeasId.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddMod.o: openair2/RRC/LITE/MESSAGES/MeasIdToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddMod.o openair2/RRC/LITE/MESSAGES/MeasIdToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddModList.o: openair2/RRC/LITE/MESSAGES/MeasIdToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToAddModList.o openair2/RRC/LITE/MESSAGES/MeasIdToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToRemoveList.o: openair2/RRC/LITE/MESSAGES/MeasIdToRemoveList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasIdToRemoveList.o openair2/RRC/LITE/MESSAGES/MeasIdToRemoveList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectCDMA2000.o: openair2/RRC/LITE/MESSAGES/MeasObjectCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectCDMA2000.o openair2/RRC/LITE/MESSAGES/MeasObjectCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectEUTRA.o: openair2/RRC/LITE/MESSAGES/MeasObjectEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectEUTRA.o openair2/RRC/LITE/MESSAGES/MeasObjectEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectGERAN.o: openair2/RRC/LITE/MESSAGES/MeasObjectGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectGERAN.o openair2/RRC/LITE/MESSAGES/MeasObjectGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectId.o: openair2/RRC/LITE/MESSAGES/MeasObjectId.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectId.o openair2/RRC/LITE/MESSAGES/MeasObjectId.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddMod.o: openair2/RRC/LITE/MESSAGES/MeasObjectToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddMod.o openair2/RRC/LITE/MESSAGES/MeasObjectToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddModList.o: openair2/RRC/LITE/MESSAGES/MeasObjectToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToAddModList.o openair2/RRC/LITE/MESSAGES/MeasObjectToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToRemoveList.o: openair2/RRC/LITE/MESSAGES/MeasObjectToRemoveList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectToRemoveList.o openair2/RRC/LITE/MESSAGES/MeasObjectToRemoveList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectUTRA.o: openair2/RRC/LITE/MESSAGES/MeasObjectUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasObjectUTRA.o openair2/RRC/LITE/MESSAGES/MeasObjectUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasParameters.o: openair2/RRC/LITE/MESSAGES/MeasParameters.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasParameters.o openair2/RRC/LITE/MESSAGES/MeasParameters.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultCDMA2000.o: openair2/RRC/LITE/MESSAGES/MeasResultCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultCDMA2000.o openair2/RRC/LITE/MESSAGES/MeasResultCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultEUTRA.o: openair2/RRC/LITE/MESSAGES/MeasResultEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultEUTRA.o openair2/RRC/LITE/MESSAGES/MeasResultEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultGERAN.o: openair2/RRC/LITE/MESSAGES/MeasResultGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultGERAN.o openair2/RRC/LITE/MESSAGES/MeasResultGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListCDMA2000.o: openair2/RRC/LITE/MESSAGES/MeasResultListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListCDMA2000.o openair2/RRC/LITE/MESSAGES/MeasResultListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListEUTRA.o: openair2/RRC/LITE/MESSAGES/MeasResultListEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListEUTRA.o openair2/RRC/LITE/MESSAGES/MeasResultListEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListGERAN.o: openair2/RRC/LITE/MESSAGES/MeasResultListGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListGERAN.o openair2/RRC/LITE/MESSAGES/MeasResultListGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListUTRA.o: openair2/RRC/LITE/MESSAGES/MeasResultListUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultListUTRA.o openair2/RRC/LITE/MESSAGES/MeasResultListUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultUTRA.o: openair2/RRC/LITE/MESSAGES/MeasResultUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultUTRA.o openair2/RRC/LITE/MESSAGES/MeasResultUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResults.o: openair2/RRC/LITE/MESSAGES/MeasResults.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResults.o openair2/RRC/LITE/MESSAGES/MeasResults.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultsCDMA2000.o: openair2/RRC/LITE/MESSAGES/MeasResultsCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasResultsCDMA2000.o openair2/RRC/LITE/MESSAGES/MeasResultsCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport-r8-IEs.o: openair2/RRC/LITE/MESSAGES/MeasurementReport-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport-r8-IEs.o openair2/RRC/LITE/MESSAGES/MeasurementReport-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport.o: openair2/RRC/LITE/MESSAGES/MeasurementReport.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MeasurementReport.o openair2/RRC/LITE/MESSAGES/MeasurementReport.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityControlInfo.o: openair2/RRC/LITE/MESSAGES/MobilityControlInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityControlInfo.o openair2/RRC/LITE/MESSAGES/MobilityControlInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand-r8-IEs.o: openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand-r8-IEs.o openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand.o: openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand.o openair2/RRC/LITE/MESSAGES/MobilityFromEUTRACommand.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityParametersCDMA2000.o: openair2/RRC/LITE/MESSAGES/MobilityParametersCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityParametersCDMA2000.o openair2/RRC/LITE/MESSAGES/MobilityParametersCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityStateParameters.o: openair2/RRC/LITE/MESSAGES/MobilityStateParameters.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/MobilityStateParameters.o openair2/RRC/LITE/MESSAGES/MobilityStateParameters.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/N1-PUCCH-AN-PersistentList.o: openair2/RRC/LITE/MESSAGES/N1-PUCCH-AN-PersistentList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/N1-PUCCH-AN-PersistentList.o openair2/RRC/LITE/MESSAGES/N1-PUCCH-AN-PersistentList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NULL.o: openair2/RRC/LITE/MESSAGES/NULL.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NULL.o openair2/RRC/LITE/MESSAGES/NULL.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeEnumerated.o: openair2/RRC/LITE/MESSAGES/NativeEnumerated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeEnumerated.o openair2/RRC/LITE/MESSAGES/NativeEnumerated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeInteger.o: openair2/RRC/LITE/MESSAGES/NativeInteger.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NativeInteger.o openair2/RRC/LITE/MESSAGES/NativeInteger.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellCDMA2000.o: openair2/RRC/LITE/MESSAGES/NeighCellCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellCDMA2000.o openair2/RRC/LITE/MESSAGES/NeighCellCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellConfig.o: openair2/RRC/LITE/MESSAGES/NeighCellConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellConfig.o openair2/RRC/LITE/MESSAGES/NeighCellConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellListCDMA2000.o: openair2/RRC/LITE/MESSAGES/NeighCellListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellListCDMA2000.o openair2/RRC/LITE/MESSAGES/NeighCellListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassCDMA2000.o: openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassCDMA2000.o openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassListCDMA2000.o: openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassListCDMA2000.o openair2/RRC/LITE/MESSAGES/NeighCellsPerBandclassListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NextHopChainingCount.o: openair2/RRC/LITE/MESSAGES/NextHopChainingCount.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/NextHopChainingCount.o openair2/RRC/LITE/MESSAGES/NextHopChainingCount.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/OCTET_STRING.o: openair2/RRC/LITE/MESSAGES/OCTET_STRING.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/OCTET_STRING.o openair2/RRC/LITE/MESSAGES/OCTET_STRING.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/P-Max.o: openair2/RRC/LITE/MESSAGES/P-Max.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/P-Max.o openair2/RRC/LITE/MESSAGES/P-Max.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Config.o: openair2/RRC/LITE/MESSAGES/PCCH-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Config.o openair2/RRC/LITE/MESSAGES/PCCH-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Message.o: openair2/RRC/LITE/MESSAGES/PCCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-Message.o openair2/RRC/LITE/MESSAGES/PCCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-MessageType.o: openair2/RRC/LITE/MESSAGES/PCCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PCCH-MessageType.o openair2/RRC/LITE/MESSAGES/PCCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Config.o: openair2/RRC/LITE/MESSAGES/PDCP-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Config.o openair2/RRC/LITE/MESSAGES/PDCP-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Parameters.o: openair2/RRC/LITE/MESSAGES/PDCP-Parameters.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDCP-Parameters.o openair2/RRC/LITE/MESSAGES/PDCP-Parameters.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigCommon.o: openair2/RRC/LITE/MESSAGES/PDSCH-ConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigCommon.o openair2/RRC/LITE/MESSAGES/PDSCH-ConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigDedicated.o: openair2/RRC/LITE/MESSAGES/PDSCH-ConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PDSCH-ConfigDedicated.o openair2/RRC/LITE/MESSAGES/PDSCH-ConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PHICH-Config.o: openair2/RRC/LITE/MESSAGES/PHICH-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PHICH-Config.o openair2/RRC/LITE/MESSAGES/PHICH-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-Identity.o: openair2/RRC/LITE/MESSAGES/PLMN-Identity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-Identity.o openair2/RRC/LITE/MESSAGES/PLMN-Identity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityInfo.o: openair2/RRC/LITE/MESSAGES/PLMN-IdentityInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityInfo.o openair2/RRC/LITE/MESSAGES/PLMN-IdentityInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList.o: openair2/RRC/LITE/MESSAGES/PLMN-IdentityList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList.o openair2/RRC/LITE/MESSAGES/PLMN-IdentityList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList2.o: openair2/RRC/LITE/MESSAGES/PLMN-IdentityList2.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PLMN-IdentityList2.o openair2/RRC/LITE/MESSAGES/PLMN-IdentityList2.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-Config.o: openair2/RRC/LITE/MESSAGES/PRACH-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-Config.o openair2/RRC/LITE/MESSAGES/PRACH-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigInfo.o: openair2/RRC/LITE/MESSAGES/PRACH-ConfigInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigInfo.o openair2/RRC/LITE/MESSAGES/PRACH-ConfigInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigSIB.o: openair2/RRC/LITE/MESSAGES/PRACH-ConfigSIB.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PRACH-ConfigSIB.o openair2/RRC/LITE/MESSAGES/PRACH-ConfigSIB.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigCommon.o: openair2/RRC/LITE/MESSAGES/PUCCH-ConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigCommon.o openair2/RRC/LITE/MESSAGES/PUCCH-ConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigDedicated.o: openair2/RRC/LITE/MESSAGES/PUCCH-ConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUCCH-ConfigDedicated.o openair2/RRC/LITE/MESSAGES/PUCCH-ConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigCommon.o: openair2/RRC/LITE/MESSAGES/PUSCH-ConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigCommon.o openair2/RRC/LITE/MESSAGES/PUSCH-ConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigDedicated.o: openair2/RRC/LITE/MESSAGES/PUSCH-ConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PUSCH-ConfigDedicated.o openair2/RRC/LITE/MESSAGES/PUSCH-ConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Paging.o: openair2/RRC/LITE/MESSAGES/Paging.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Paging.o openair2/RRC/LITE/MESSAGES/Paging.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecord.o: openair2/RRC/LITE/MESSAGES/PagingRecord.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecord.o openair2/RRC/LITE/MESSAGES/PagingRecord.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecordList.o: openair2/RRC/LITE/MESSAGES/PagingRecordList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingRecordList.o openair2/RRC/LITE/MESSAGES/PagingRecordList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingUE-Identity.o: openair2/RRC/LITE/MESSAGES/PagingUE-Identity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PagingUE-Identity.o openair2/RRC/LITE/MESSAGES/PagingUE-Identity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhyLayerParameters.o: openair2/RRC/LITE/MESSAGES/PhyLayerParameters.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhyLayerParameters.o openair2/RRC/LITE/MESSAGES/PhyLayerParameters.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellId.o: openair2/RRC/LITE/MESSAGES/PhysCellId.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellId.o openair2/RRC/LITE/MESSAGES/PhysCellId.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdCDMA2000.o: openair2/RRC/LITE/MESSAGES/PhysCellIdCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdCDMA2000.o openair2/RRC/LITE/MESSAGES/PhysCellIdCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdGERAN.o: openair2/RRC/LITE/MESSAGES/PhysCellIdGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdGERAN.o openair2/RRC/LITE/MESSAGES/PhysCellIdGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdListCDMA2000.o: openair2/RRC/LITE/MESSAGES/PhysCellIdListCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdListCDMA2000.o openair2/RRC/LITE/MESSAGES/PhysCellIdListCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdRange.o: openair2/RRC/LITE/MESSAGES/PhysCellIdRange.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdRange.o openair2/RRC/LITE/MESSAGES/PhysCellIdRange.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-FDD.o openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-TDD.o: openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-TDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-TDD.o openair2/RRC/LITE/MESSAGES/PhysCellIdUTRA-TDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysicalConfigDedicated.o: openair2/RRC/LITE/MESSAGES/PhysicalConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PhysicalConfigDedicated.o openair2/RRC/LITE/MESSAGES/PhysicalConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollByte.o: openair2/RRC/LITE/MESSAGES/PollByte.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollByte.o openair2/RRC/LITE/MESSAGES/PollByte.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollPDU.o: openair2/RRC/LITE/MESSAGES/PollPDU.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PollPDU.o openair2/RRC/LITE/MESSAGES/PollPDU.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationInfoHRPD.o: openair2/RRC/LITE/MESSAGES/PreRegistrationInfoHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationInfoHRPD.o openair2/RRC/LITE/MESSAGES/PreRegistrationInfoHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationZoneIdHRPD.o: openair2/RRC/LITE/MESSAGES/PreRegistrationZoneIdHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PreRegistrationZoneIdHRPD.o openair2/RRC/LITE/MESSAGES/PreRegistrationZoneIdHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PresenceAntennaPort1.o: openair2/RRC/LITE/MESSAGES/PresenceAntennaPort1.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/PresenceAntennaPort1.o openair2/RRC/LITE/MESSAGES/PresenceAntennaPort1.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRange.o: openair2/RRC/LITE/MESSAGES/Q-OffsetRange.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRange.o openair2/RRC/LITE/MESSAGES/Q-OffsetRange.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRangeInterRAT.o: openair2/RRC/LITE/MESSAGES/Q-OffsetRangeInterRAT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-OffsetRangeInterRAT.o openair2/RRC/LITE/MESSAGES/Q-OffsetRangeInterRAT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-RxLevMin.o: openair2/RRC/LITE/MESSAGES/Q-RxLevMin.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/Q-RxLevMin.o openair2/RRC/LITE/MESSAGES/Q-RxLevMin.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfig.o: openair2/RRC/LITE/MESSAGES/QuantityConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfig.o openair2/RRC/LITE/MESSAGES/QuantityConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigCDMA2000.o: openair2/RRC/LITE/MESSAGES/QuantityConfigCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigCDMA2000.o openair2/RRC/LITE/MESSAGES/QuantityConfigCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigEUTRA.o: openair2/RRC/LITE/MESSAGES/QuantityConfigEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigEUTRA.o openair2/RRC/LITE/MESSAGES/QuantityConfigEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigGERAN.o: openair2/RRC/LITE/MESSAGES/QuantityConfigGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigGERAN.o openair2/RRC/LITE/MESSAGES/QuantityConfigGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigUTRA.o: openair2/RRC/LITE/MESSAGES/QuantityConfigUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/QuantityConfigUTRA.o openair2/RRC/LITE/MESSAGES/QuantityConfigUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigCommon.o: openair2/RRC/LITE/MESSAGES/RACH-ConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigCommon.o openair2/RRC/LITE/MESSAGES/RACH-ConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigDedicated.o: openair2/RRC/LITE/MESSAGES/RACH-ConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RACH-ConfigDedicated.o openair2/RRC/LITE/MESSAGES/RACH-ConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAND-CDMA2000.o: openair2/RRC/LITE/MESSAGES/RAND-CDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAND-CDMA2000.o openair2/RRC/LITE/MESSAGES/RAND-CDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAT-Type.o: openair2/RRC/LITE/MESSAGES/RAT-Type.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RAT-Type.o openair2/RRC/LITE/MESSAGES/RAT-Type.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RF-Parameters.o: openair2/RRC/LITE/MESSAGES/RF-Parameters.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RF-Parameters.o openair2/RRC/LITE/MESSAGES/RF-Parameters.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RLC-Config.o: openair2/RRC/LITE/MESSAGES/RLC-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RLC-Config.o openair2/RRC/LITE/MESSAGES/RLC-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRC-TransactionIdentifier.o: openair2/RRC/LITE/MESSAGES/RRC-TransactionIdentifier.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRC-TransactionIdentifier.o openair2/RRC/LITE/MESSAGES/RRC-TransactionIdentifier.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration.o openair2/RRC/LITE/MESSAGES/RRCConnectionReconfiguration.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete.o openair2/RRC/LITE/MESSAGES/RRCConnectionReconfigurationComplete.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishment.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentComplete.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentReject.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest.o openair2/RRC/LITE/MESSAGES/RRCConnectionReestablishmentRequest.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReject-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionReject-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject.o: openair2/RRC/LITE/MESSAGES/RRCConnectionReject.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionReject.o openair2/RRC/LITE/MESSAGES/RRCConnectionReject.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionRelease-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionRelease-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease.o: openair2/RRC/LITE/MESSAGES/RRCConnectionRelease.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRelease.o openair2/RRC/LITE/MESSAGES/RRCConnectionRelease.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionRequest-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionRequest-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest.o: openair2/RRC/LITE/MESSAGES/RRCConnectionRequest.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionRequest.o openair2/RRC/LITE/MESSAGES/RRCConnectionRequest.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionSetup-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionSetup-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup.o: openair2/RRC/LITE/MESSAGES/RRCConnectionSetup.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetup.o openair2/RRC/LITE/MESSAGES/RRCConnectionSetup.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete-r8-IEs.o: openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete-r8-IEs.o openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete.o: openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete.o openair2/RRC/LITE/MESSAGES/RRCConnectionSetupComplete.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRM-Config.o: openair2/RRC/LITE/MESSAGES/RRM-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RRM-Config.o openair2/RRC/LITE/MESSAGES/RRM-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRP-Range.o: openair2/RRC/LITE/MESSAGES/RSRP-Range.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRP-Range.o openair2/RRC/LITE/MESSAGES/RSRP-Range.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRQ-Range.o: openair2/RRC/LITE/MESSAGES/RSRQ-Range.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RSRQ-Range.o openair2/RRC/LITE/MESSAGES/RSRQ-Range.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommon.o: openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommon.o openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommonSIB.o: openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommonSIB.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommonSIB.o openair2/RRC/LITE/MESSAGES/RadioResourceConfigCommonSIB.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigDedicated.o: openair2/RRC/LITE/MESSAGES/RadioResourceConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RadioResourceConfigDedicated.o openair2/RRC/LITE/MESSAGES/RadioResourceConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RedirectedCarrierInfo.o: openair2/RRC/LITE/MESSAGES/RedirectedCarrierInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RedirectedCarrierInfo.o openair2/RRC/LITE/MESSAGES/RedirectedCarrierInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestabUE-Identity.o: openair2/RRC/LITE/MESSAGES/ReestabUE-Identity.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestabUE-Identity.o openair2/RRC/LITE/MESSAGES/ReestabUE-Identity.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentCause.o: openair2/RRC/LITE/MESSAGES/ReestablishmentCause.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentCause.o openair2/RRC/LITE/MESSAGES/ReestablishmentCause.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentInfo.o: openair2/RRC/LITE/MESSAGES/ReestablishmentInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReestablishmentInfo.o openair2/RRC/LITE/MESSAGES/ReestablishmentInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RegisteredMME.o: openair2/RRC/LITE/MESSAGES/RegisteredMME.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/RegisteredMME.o openair2/RRC/LITE/MESSAGES/RegisteredMME.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReleaseCause.o: openair2/RRC/LITE/MESSAGES/ReleaseCause.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReleaseCause.o openair2/RRC/LITE/MESSAGES/ReleaseCause.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigEUTRA.o: openair2/RRC/LITE/MESSAGES/ReportConfigEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigEUTRA.o openair2/RRC/LITE/MESSAGES/ReportConfigEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigId.o: openair2/RRC/LITE/MESSAGES/ReportConfigId.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigId.o openair2/RRC/LITE/MESSAGES/ReportConfigId.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigInterRAT.o: openair2/RRC/LITE/MESSAGES/ReportConfigInterRAT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigInterRAT.o openair2/RRC/LITE/MESSAGES/ReportConfigInterRAT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddMod.o: openair2/RRC/LITE/MESSAGES/ReportConfigToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddMod.o openair2/RRC/LITE/MESSAGES/ReportConfigToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddModList.o: openair2/RRC/LITE/MESSAGES/ReportConfigToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToAddModList.o openair2/RRC/LITE/MESSAGES/ReportConfigToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToRemoveList.o: openair2/RRC/LITE/MESSAGES/ReportConfigToRemoveList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportConfigToRemoveList.o openair2/RRC/LITE/MESSAGES/ReportConfigToRemoveList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportInterval.o: openair2/RRC/LITE/MESSAGES/ReportInterval.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReportInterval.o openair2/RRC/LITE/MESSAGES/ReportInterval.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReselectionThreshold.o: openair2/RRC/LITE/MESSAGES/ReselectionThreshold.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ReselectionThreshold.o openair2/RRC/LITE/MESSAGES/ReselectionThreshold.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/S-TMSI.o: openair2/RRC/LITE/MESSAGES/S-TMSI.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/S-TMSI.o openair2/RRC/LITE/MESSAGES/S-TMSI.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SI-OrPSI-GERAN.o: openair2/RRC/LITE/MESSAGES/SI-OrPSI-GERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SI-OrPSI-GERAN.o openair2/RRC/LITE/MESSAGES/SI-OrPSI-GERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-MappingInfo.o: openair2/RRC/LITE/MESSAGES/SIB-MappingInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-MappingInfo.o openair2/RRC/LITE/MESSAGES/SIB-MappingInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-Type.o: openair2/RRC/LITE/MESSAGES/SIB-Type.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SIB-Type.o openair2/RRC/LITE/MESSAGES/SIB-Type.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SN-FieldLength.o: openair2/RRC/LITE/MESSAGES/SN-FieldLength.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SN-FieldLength.o openair2/RRC/LITE/MESSAGES/SN-FieldLength.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-Config.o: openair2/RRC/LITE/MESSAGES/SPS-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-Config.o openair2/RRC/LITE/MESSAGES/SPS-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigDL.o: openair2/RRC/LITE/MESSAGES/SPS-ConfigDL.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigDL.o openair2/RRC/LITE/MESSAGES/SPS-ConfigDL.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigUL.o: openair2/RRC/LITE/MESSAGES/SPS-ConfigUL.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SPS-ConfigUL.o openair2/RRC/LITE/MESSAGES/SPS-ConfigUL.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddMod.o: openair2/RRC/LITE/MESSAGES/SRB-ToAddMod.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddMod.o openair2/RRC/LITE/MESSAGES/SRB-ToAddMod.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddModList.o: openair2/RRC/LITE/MESSAGES/SRB-ToAddModList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SRB-ToAddModList.o openair2/RRC/LITE/MESSAGES/SRB-ToAddModList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfo.o: openair2/RRC/LITE/MESSAGES/SchedulingInfo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfo.o openair2/RRC/LITE/MESSAGES/SchedulingInfo.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfoList.o: openair2/RRC/LITE/MESSAGES/SchedulingInfoList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingInfoList.o openair2/RRC/LITE/MESSAGES/SchedulingInfoList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingRequestConfig.o: openair2/RRC/LITE/MESSAGES/SchedulingRequestConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SchedulingRequestConfig.o openair2/RRC/LITE/MESSAGES/SchedulingRequestConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecondaryPreRegistrationZoneIdListHRPD.o: openair2/RRC/LITE/MESSAGES/SecondaryPreRegistrationZoneIdListHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecondaryPreRegistrationZoneIdListHRPD.o openair2/RRC/LITE/MESSAGES/SecondaryPreRegistrationZoneIdListHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityAlgorithmConfig.o: openair2/RRC/LITE/MESSAGES/SecurityAlgorithmConfig.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityAlgorithmConfig.o openair2/RRC/LITE/MESSAGES/SecurityAlgorithmConfig.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigHO.o: openair2/RRC/LITE/MESSAGES/SecurityConfigHO.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigHO.o openair2/RRC/LITE/MESSAGES/SecurityConfigHO.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigSMC.o: openair2/RRC/LITE/MESSAGES/SecurityConfigSMC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityConfigSMC.o openair2/RRC/LITE/MESSAGES/SecurityConfigSMC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand-r8-IEs.o: openair2/RRC/LITE/MESSAGES/SecurityModeCommand-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand-r8-IEs.o openair2/RRC/LITE/MESSAGES/SecurityModeCommand-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand.o: openair2/RRC/LITE/MESSAGES/SecurityModeCommand.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeCommand.o openair2/RRC/LITE/MESSAGES/SecurityModeCommand.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete-r8-IEs.o: openair2/RRC/LITE/MESSAGES/SecurityModeComplete-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete-r8-IEs.o openair2/RRC/LITE/MESSAGES/SecurityModeComplete-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete.o: openair2/RRC/LITE/MESSAGES/SecurityModeComplete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeComplete.o openair2/RRC/LITE/MESSAGES/SecurityModeComplete.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure-r8-IEs.o: openair2/RRC/LITE/MESSAGES/SecurityModeFailure-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure-r8-IEs.o openair2/RRC/LITE/MESSAGES/SecurityModeFailure-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure.o: openair2/RRC/LITE/MESSAGES/SecurityModeFailure.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SecurityModeFailure.o openair2/RRC/LITE/MESSAGES/SecurityModeFailure.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ShortMAC-I.o: openair2/RRC/LITE/MESSAGES/ShortMAC-I.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ShortMAC-I.o openair2/RRC/LITE/MESSAGES/ShortMAC-I.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigCommon.o: openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigCommon.o openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigDedicated.o: openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigDedicated.o openair2/RRC/LITE/MESSAGES/SoundingRS-UL-ConfigDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SpeedStateScaleFactors.o: openair2/RRC/LITE/MESSAGES/SpeedStateScaleFactors.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SpeedStateScaleFactors.o openair2/RRC/LITE/MESSAGES/SpeedStateScaleFactors.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandEUTRA.o: openair2/RRC/LITE/MESSAGES/SupportedBandEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandEUTRA.o openair2/RRC/LITE/MESSAGES/SupportedBandEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandGERAN.o: openair2/RRC/LITE/MESSAGES/SupportedBandGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandGERAN.o openair2/RRC/LITE/MESSAGES/SupportedBandGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandList1XRTT.o: openair2/RRC/LITE/MESSAGES/SupportedBandList1XRTT.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandList1XRTT.o openair2/RRC/LITE/MESSAGES/SupportedBandList1XRTT.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListEUTRA.o: openair2/RRC/LITE/MESSAGES/SupportedBandListEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListEUTRA.o openair2/RRC/LITE/MESSAGES/SupportedBandListEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListGERAN.o: openair2/RRC/LITE/MESSAGES/SupportedBandListGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListGERAN.o openair2/RRC/LITE/MESSAGES/SupportedBandListGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListHRPD.o: openair2/RRC/LITE/MESSAGES/SupportedBandListHRPD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListHRPD.o openair2/RRC/LITE/MESSAGES/SupportedBandListHRPD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-FDD.o openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD128.o: openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD128.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD128.o openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD128.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD384.o: openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD384.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD384.o openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD384.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD768.o: openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD768.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD768.o openair2/RRC/LITE/MESSAGES/SupportedBandListUTRA-TDD768.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-FDD.o: openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-FDD.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-FDD.o openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-FDD.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD128.o: openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD128.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD128.o openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD128.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD384.o: openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD384.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD384.o openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD384.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD768.o: openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD768.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD768.o openair2/RRC/LITE/MESSAGES/SupportedBandUTRA-TDD768.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInfoListGERAN.o: openair2/RRC/LITE/MESSAGES/SystemInfoListGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInfoListGERAN.o openair2/RRC/LITE/MESSAGES/SystemInfoListGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs-sib-TypeAndInfo-Member.o: openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs-sib-TypeAndInfo-Member.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs-sib-TypeAndInfo-Member.o openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs-sib-TypeAndInfo-Member.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs.o: openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs.o openair2/RRC/LITE/MESSAGES/SystemInformation-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation.o: openair2/RRC/LITE/MESSAGES/SystemInformation.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformation.o openair2/RRC/LITE/MESSAGES/SystemInformation.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType1.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType1.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType1.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType1.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType10.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType10.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType10.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType10.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType11.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType11.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType11.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType11.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType2.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType2.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType2.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType2.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType3.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType3.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType3.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType3.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType4.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType4.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType4.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType4.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType5.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType5.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType5.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType5.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType6.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType6.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType6.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType6.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType7.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType7.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType7.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType7.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType8.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType8.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType8.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType8.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType9.o: openair2/RRC/LITE/MESSAGES/SystemInformationBlockType9.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemInformationBlockType9.o openair2/RRC/LITE/MESSAGES/SystemInformationBlockType9.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemTimeInfoCDMA2000.o: openair2/RRC/LITE/MESSAGES/SystemTimeInfoCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/SystemTimeInfoCDMA2000.o openair2/RRC/LITE/MESSAGES/SystemTimeInfoCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-PollRetransmit.o: openair2/RRC/LITE/MESSAGES/T-PollRetransmit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-PollRetransmit.o openair2/RRC/LITE/MESSAGES/T-PollRetransmit.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reordering.o: openair2/RRC/LITE/MESSAGES/T-Reordering.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reordering.o openair2/RRC/LITE/MESSAGES/T-Reordering.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reselection.o: openair2/RRC/LITE/MESSAGES/T-Reselection.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-Reselection.o openair2/RRC/LITE/MESSAGES/T-Reselection.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-StatusProhibit.o: openair2/RRC/LITE/MESSAGES/T-StatusProhibit.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/T-StatusProhibit.o openair2/RRC/LITE/MESSAGES/T-StatusProhibit.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TDD-Config.o: openair2/RRC/LITE/MESSAGES/TDD-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TDD-Config.o openair2/RRC/LITE/MESSAGES/TDD-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-Index.o: openair2/RRC/LITE/MESSAGES/TPC-Index.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-Index.o openair2/RRC/LITE/MESSAGES/TPC-Index.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-PDCCH-Config.o: openair2/RRC/LITE/MESSAGES/TPC-PDCCH-Config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TPC-PDCCH-Config.o openair2/RRC/LITE/MESSAGES/TPC-PDCCH-Config.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdCDMA2000.o: openair2/RRC/LITE/MESSAGES/ThresholdCDMA2000.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdCDMA2000.o openair2/RRC/LITE/MESSAGES/ThresholdCDMA2000.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdEUTRA.o: openair2/RRC/LITE/MESSAGES/ThresholdEUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdEUTRA.o openair2/RRC/LITE/MESSAGES/ThresholdEUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdGERAN.o: openair2/RRC/LITE/MESSAGES/ThresholdGERAN.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdGERAN.o openair2/RRC/LITE/MESSAGES/ThresholdGERAN.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdUTRA.o: openair2/RRC/LITE/MESSAGES/ThresholdUTRA.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ThresholdUTRA.o openair2/RRC/LITE/MESSAGES/ThresholdUTRA.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeAlignmentTimer.o: openair2/RRC/LITE/MESSAGES/TimeAlignmentTimer.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeAlignmentTimer.o openair2/RRC/LITE/MESSAGES/TimeAlignmentTimer.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeToTrigger.o: openair2/RRC/LITE/MESSAGES/TimeToTrigger.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TimeToTrigger.o openair2/RRC/LITE/MESSAGES/TimeToTrigger.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TrackingAreaCode.o: openair2/RRC/LITE/MESSAGES/TrackingAreaCode.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/TrackingAreaCode.o openair2/RRC/LITE/MESSAGES/TrackingAreaCode.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-Container.o: openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-Container.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-Container.o openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-Container.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-ContainerList.o: openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-ContainerList.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-ContainerList.o openair2/RRC/LITE/MESSAGES/UE-CapabilityRAT-ContainerList.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRequest.o: openair2/RRC/LITE/MESSAGES/UE-CapabilityRequest.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-CapabilityRequest.o openair2/RRC/LITE/MESSAGES/UE-CapabilityRequest.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-EUTRA-Capability.o: openair2/RRC/LITE/MESSAGES/UE-EUTRA-Capability.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-EUTRA-Capability.o openair2/RRC/LITE/MESSAGES/UE-EUTRA-Capability.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-TimersAndConstants.o: openair2/RRC/LITE/MESSAGES/UE-TimersAndConstants.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UE-TimersAndConstants.o openair2/RRC/LITE/MESSAGES/UE-TimersAndConstants.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry-r8-IEs.o: openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry-r8-IEs.o openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry.o: openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry.o openair2/RRC/LITE/MESSAGES/UECapabilityEnquiry.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation-r8-IEs.o: openair2/RRC/LITE/MESSAGES/UECapabilityInformation-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation-r8-IEs.o openair2/RRC/LITE/MESSAGES/UECapabilityInformation-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation.o: openair2/RRC/LITE/MESSAGES/UECapabilityInformation.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UECapabilityInformation.o openair2/RRC/LITE/MESSAGES/UECapabilityInformation.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation-r8-IEs.o: openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation-r8-IEs.o openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation.o: openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation.o openair2/RRC/LITE/MESSAGES/UERadioAccessCapabilityInformation.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-AM-RLC.o: openair2/RRC/LITE/MESSAGES/UL-AM-RLC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-AM-RLC.o openair2/RRC/LITE/MESSAGES/UL-AM-RLC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-Message.o: openair2/RRC/LITE/MESSAGES/UL-CCCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-Message.o openair2/RRC/LITE/MESSAGES/UL-CCCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-MessageType.o: openair2/RRC/LITE/MESSAGES/UL-CCCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CCCH-MessageType.o openair2/RRC/LITE/MESSAGES/UL-CCCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CyclicPrefixLength.o: openair2/RRC/LITE/MESSAGES/UL-CyclicPrefixLength.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-CyclicPrefixLength.o openair2/RRC/LITE/MESSAGES/UL-CyclicPrefixLength.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-Message.o: openair2/RRC/LITE/MESSAGES/UL-DCCH-Message.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-Message.o openair2/RRC/LITE/MESSAGES/UL-DCCH-Message.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-MessageType.o: openair2/RRC/LITE/MESSAGES/UL-DCCH-MessageType.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-DCCH-MessageType.o openair2/RRC/LITE/MESSAGES/UL-DCCH-MessageType.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-ReferenceSignalsPUSCH.o: openair2/RRC/LITE/MESSAGES/UL-ReferenceSignalsPUSCH.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-ReferenceSignalsPUSCH.o openair2/RRC/LITE/MESSAGES/UL-ReferenceSignalsPUSCH.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-UM-RLC.o: openair2/RRC/LITE/MESSAGES/UL-UM-RLC.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UL-UM-RLC.o openair2/RRC/LITE/MESSAGES/UL-UM-RLC.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer-r8-IEs.o: openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer-r8-IEs.o openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer.o: openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer.o openair2/RRC/LITE/MESSAGES/ULHandoverPreparationTransfer.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer-r8-IEs.o: openair2/RRC/LITE/MESSAGES/ULInformationTransfer-r8-IEs.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer-r8-IEs.o openair2/RRC/LITE/MESSAGES/ULInformationTransfer-r8-IEs.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer.o: openair2/RRC/LITE/MESSAGES/ULInformationTransfer.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ULInformationTransfer.o openair2/RRC/LITE/MESSAGES/ULInformationTransfer.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlCommon.o: openair2/RRC/LITE/MESSAGES/UplinkPowerControlCommon.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlCommon.o openair2/RRC/LITE/MESSAGES/UplinkPowerControlCommon.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlDedicated.o: openair2/RRC/LITE/MESSAGES/UplinkPowerControlDedicated.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/UplinkPowerControlDedicated.o openair2/RRC/LITE/MESSAGES/UplinkPowerControlDedicated.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn1_msg.o: openair2/RRC/LITE/MESSAGES/asn1_msg.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn1_msg.o openair2/RRC/LITE/MESSAGES/asn1_msg.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SEQUENCE_OF.o: openair2/RRC/LITE/MESSAGES/asn_SEQUENCE_OF.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SEQUENCE_OF.o openair2/RRC/LITE/MESSAGES/asn_SEQUENCE_OF.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SET_OF.o: openair2/RRC/LITE/MESSAGES/asn_SET_OF.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_SET_OF.o openair2/RRC/LITE/MESSAGES/asn_SET_OF.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_codecs_prim.o: openair2/RRC/LITE/MESSAGES/asn_codecs_prim.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/asn_codecs_prim.o openair2/RRC/LITE/MESSAGES/asn_codecs_prim.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_decoder.o: openair2/RRC/LITE/MESSAGES/ber_decoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_decoder.o openair2/RRC/LITE/MESSAGES/ber_decoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_length.o: openair2/RRC/LITE/MESSAGES/ber_tlv_length.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_length.o openair2/RRC/LITE/MESSAGES/ber_tlv_length.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_tag.o: openair2/RRC/LITE/MESSAGES/ber_tlv_tag.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/ber_tlv_tag.o openair2/RRC/LITE/MESSAGES/ber_tlv_tag.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/bsearch.o: openair2/RRC/LITE/MESSAGES/bsearch.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/bsearch.o openair2/RRC/LITE/MESSAGES/bsearch.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_CHOICE.o: openair2/RRC/LITE/MESSAGES/constr_CHOICE.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_CHOICE.o openair2/RRC/LITE/MESSAGES/constr_CHOICE.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE.o: openair2/RRC/LITE/MESSAGES/constr_SEQUENCE.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE.o openair2/RRC/LITE/MESSAGES/constr_SEQUENCE.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE_OF.o: openair2/RRC/LITE/MESSAGES/constr_SEQUENCE_OF.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SEQUENCE_OF.o openair2/RRC/LITE/MESSAGES/constr_SEQUENCE_OF.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SET_OF.o: openair2/RRC/LITE/MESSAGES/constr_SET_OF.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_SET_OF.o openair2/RRC/LITE/MESSAGES/constr_SET_OF.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_TYPE.o: openair2/RRC/LITE/MESSAGES/constr_TYPE.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constr_TYPE.o openair2/RRC/LITE/MESSAGES/constr_TYPE.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constraints.o: openair2/RRC/LITE/MESSAGES/constraints.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/constraints.o openair2/RRC/LITE/MESSAGES/constraints.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/converter-sample.o: openair2/RRC/LITE/MESSAGES/converter-sample.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/converter-sample.o openair2/RRC/LITE/MESSAGES/converter-sample.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/der_encoder.o: openair2/RRC/LITE/MESSAGES/der_encoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/der_encoder.o openair2/RRC/LITE/MESSAGES/der_encoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_decoder.o: openair2/RRC/LITE/MESSAGES/per_decoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_decoder.o openair2/RRC/LITE/MESSAGES/per_decoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_encoder.o: openair2/RRC/LITE/MESSAGES/per_encoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_encoder.o openair2/RRC/LITE/MESSAGES/per_encoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_opentype.o: openair2/RRC/LITE/MESSAGES/per_opentype.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_opentype.o openair2/RRC/LITE/MESSAGES/per_opentype.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_support.o: openair2/RRC/LITE/MESSAGES/per_support.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/per_support.o openair2/RRC/LITE/MESSAGES/per_support.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/rtai_mem.o: openair2/RRC/LITE/MESSAGES/rtai_mem.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/rtai_mem.o openair2/RRC/LITE/MESSAGES/rtai_mem.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_decoder.o: openair2/RRC/LITE/MESSAGES/xer_decoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_decoder.o openair2/RRC/LITE/MESSAGES/xer_decoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_encoder.o: openair2/RRC/LITE/MESSAGES/xer_encoder.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_encoder.o openair2/RRC/LITE/MESSAGES/xer_encoder.c

${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_support.o: openair2/RRC/LITE/MESSAGES/xer_support.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/MESSAGES/xer_support.o openair2/RRC/LITE/MESSAGES/xer_support.c

${OBJECTDIR}/openair2/RRC/LITE/mesh_top.o: openair2/RRC/LITE/mesh_top.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/mesh_top.o openair2/RRC/LITE/mesh_top.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_2_rrm_msg.o: openair2/RRC/LITE/rrc_2_rrm_msg.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_2_rrm_msg.o openair2/RRC/LITE/rrc_2_rrm_msg.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_UE.o: openair2/RRC/LITE/rrc_UE.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_UE.o openair2/RRC/LITE/rrc_UE.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_UE_ral.o: openair2/RRC/LITE/rrc_UE_ral.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_UE_ral.o openair2/RRC/LITE/rrc_UE_ral.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_common.o: openair2/RRC/LITE/rrc_common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_common.o openair2/RRC/LITE/rrc_common.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_config.o: openair2/RRC/LITE/rrc_config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_config.o openair2/RRC/LITE/rrc_config.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB.o: openair2/RRC/LITE/rrc_eNB.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB.o openair2/RRC/LITE/rrc_eNB.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_GTPV1U.o: openair2/RRC/LITE/rrc_eNB_GTPV1U.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_GTPV1U.o openair2/RRC/LITE/rrc_eNB_GTPV1U.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_S1AP.o: openair2/RRC/LITE/rrc_eNB_S1AP.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_S1AP.o openair2/RRC/LITE/rrc_eNB_S1AP.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_UE_context.o: openair2/RRC/LITE/rrc_eNB_UE_context.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_UE_context.o openair2/RRC/LITE/rrc_eNB_UE_context.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_ral.o: openair2/RRC/LITE/rrc_eNB_ral.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_eNB_ral.o openair2/RRC/LITE/rrc_eNB_ral.c

${OBJECTDIR}/openair2/RRC/LITE/rrc_rrm_interface.o: openair2/RRC/LITE/rrc_rrm_interface.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrc_rrm_interface.o openair2/RRC/LITE/rrc_rrm_interface.c

${OBJECTDIR}/openair2/RRC/LITE/rrm_2_rrc_msg.o: openair2/RRC/LITE/rrm_2_rrc_msg.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/rrm_2_rrc_msg.o openair2/RRC/LITE/rrm_2_rrc_msg.c

${OBJECTDIR}/openair2/RRC/LITE/utils.o: openair2/RRC/LITE/utils.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/LITE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/LITE/utils.o openair2/RRC/LITE/utils.c

${OBJECTDIR}/openair2/RRC/NAS/nas_config.o: openair2/RRC/NAS/nas_config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/NAS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/NAS/nas_config.o openair2/RRC/NAS/nas_config.c

${OBJECTDIR}/openair2/RRC/NAS/rb_config.o: openair2/RRC/NAS/rb_config.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRC/NAS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRC/NAS/rb_config.o openair2/RRC/NAS/rb_config.c

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/Message.o: openair2/RRM_4_RRC_LITE/src/com/Message.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/Message.o openair2/RRM_4_RRC_LITE/src/com/Message.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerConfirm.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerConfirm.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerConfirm.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerConfirm.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerRequest.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerRequest.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddRadioAccessBearerRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserConfirm.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserConfirm.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserConfirm.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserConfirm.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserRequest.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserRequest.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageAddUserRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageConnectionRequest.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageConnectionRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageConnectionRequest.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageConnectionRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveRadioAccessBearerRequest.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveRadioAccessBearerRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveRadioAccessBearerRequest.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveRadioAccessBearerRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveUserRequest.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveUserRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveUserRequest.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageRemoveUserRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageUserReconfigurationComplete.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageUserReconfigurationComplete.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageUserReconfigurationComplete.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRC2RRMMessageUserReconfigurationComplete.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCMessageHandler.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRCMessageHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCMessageHandler.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRCMessageHandler.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCUdpSocket.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRCUdpSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRCUdpSocket.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRCUdpSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddRadioAccessBearerResponse.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddRadioAccessBearerResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddRadioAccessBearerResponse.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddRadioAccessBearerResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddUserResponse.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddUserResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddUserResponse.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageAddUserResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageConnectionResponse.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageConnectionResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageConnectionResponse.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageConnectionResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveRadioAccessBearerResponse.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveRadioAccessBearerResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveRadioAccessBearerResponse.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveRadioAccessBearerResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveUserResponse.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveUserResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveUserResponse.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageRemoveUserResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageUserReconfiguration.o: openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageUserReconfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageUserReconfiguration.o openair2/RRM_4_RRC_LITE/src/com/rrc/RRM2RRCMessageUserReconfiguration.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMMessageHandler.o: openair2/RRM_4_RRC_LITE/src/com/rrm/RRMMessageHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMMessageHandler.o openair2/RRM_4_RRC_LITE/src/com/rrm/RRMMessageHandler.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMUdpSocket.o: openair2/RRM_4_RRC_LITE/src/com/rrm/RRMUdpSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/com/rrm/RRMUdpSocket.o openair2/RRM_4_RRC_LITE/src/com/rrm/RRMUdpSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ajp13Socket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ajp13Socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ajp13Socket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ajp13Socket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/AjpBaseSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/AjpBaseSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/AjpBaseSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/AjpBaseSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Base64.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Base64.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Base64.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Base64.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Debug.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Debug.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Debug.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Debug.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Event.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Event.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Event.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Event.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventHandler.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventHandler.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventHandler.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventTime.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventTime.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/EventTime.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Exception.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Exception.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Exception.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Exception.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/File.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/File.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/File.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/File.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/FileStream.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/FileStream.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/FileStream.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/FileStream.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HTTPSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HTTPSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HTTPSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HTTPSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpBaseSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpBaseSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpBaseSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpBaseSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpClientSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpClientSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpClientSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpClientSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpDebugSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpDebugSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpDebugSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpDebugSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpGetSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpGetSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpGetSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpGetSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPostSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPostSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPostSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPostSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPutSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPutSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPutSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpPutSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpRequest.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpRequest.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpRequest.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpResponse.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpResponse.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpResponse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpTransaction.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpTransaction.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpTransaction.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpTransaction.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdCookies.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdCookies.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdCookies.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdCookies.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdForm.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdForm.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdForm.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdForm.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/HttpdSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/IEventOwner.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/IEventOwner.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/IEventOwner.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/IEventOwner.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv4Address.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv4Address.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv4Address.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv4Address.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv6Address.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv6Address.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv6Address.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Ipv6Address.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Json.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Json.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Json.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Json.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Lock.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Lock.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Lock.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Lock.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/MemFile.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/MemFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/MemFile.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/MemFile.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Mutex.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Mutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Mutex.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Mutex.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Parse.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Parse.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Parse.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Parse.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvServer.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvServer.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvServer.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/ResolvSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SSLInitializer.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SSLInitializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SSLInitializer.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SSLInitializer.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SctpSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SctpSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SctpSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SctpSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Semaphore.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Semaphore.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Semaphore.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Semaphore.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SmtpdSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SmtpdSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SmtpdSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SmtpdSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Socket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Socket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Socket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandler.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandler.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandler.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerEp.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerEp.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerEp.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerEp.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerThread.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerThread.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketHandlerThread.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketStream.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketStream.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketStream.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketStream.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketThread.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketThread.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/SocketThread.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Sockets-config.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Sockets-config.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Sockets-config.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Sockets-config.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StdoutLog.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StdoutLog.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StdoutLog.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StdoutLog.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamWriter.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamWriter.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamWriter.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/StreamWriter.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/TcpSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/TcpSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/TcpSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/TcpSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Thread.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Thread.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Thread.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Thread.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/UdpSocket.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/UdpSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/UdpSocket.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/UdpSocket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Utility.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Utility.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Utility.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/Utility.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlDocument.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlDocument.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlDocument.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlDocument.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlException.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlException.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlException.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlException.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlNode.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlNode.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlNode.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/XmlNode.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/socket_include.o: openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/socket_include.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/socket_include.o openair2/RRM_4_RRC_LITE/src/foreign/sockets-2.3.9.4/socket_include.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sql/sqlite3.o: openair2/RRM_4_RRC_LITE/src/foreign/sql/sqlite3.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sql
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/sql/sqlite3.o openair2/RRM_4_RRC_LITE/src/foreign/sql/sqlite3.c

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socket.o: openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socket.o openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socket.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socketUnitTests.o: openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socketUnitTests.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socketUnitTests.o openair2/RRM_4_RRC_LITE/src/foreign/tcpip/socketUnitTests.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/storage.o: openair2/RRM_4_RRC_LITE/src/foreign/tcpip/storage.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/storage.o openair2/RRM_4_RRC_LITE/src/foreign/tcpip/storage.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/tcpipUnitTests.o: openair2/RRM_4_RRC_LITE/src/foreign/tcpip/tcpipUnitTests.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/foreign/tcpip/tcpipUnitTests.o openair2/RRM_4_RRC_LITE/src/foreign/tcpip/tcpipUnitTests.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Asn1Utils.o: openair2/RRM_4_RRC_LITE/src/radio_resources/Asn1Utils.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Asn1Utils.o openair2/RRM_4_RRC_LITE/src/radio_resources/Asn1Utils.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Command.o: openair2/RRM_4_RRC_LITE/src/radio_resources/Command.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Command.o openair2/RRM_4_RRC_LITE/src/radio_resources/Command.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/DataRadioBearer.o: openair2/RRM_4_RRC_LITE/src/radio_resources/DataRadioBearer.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/DataRadioBearer.o openair2/RRM_4_RRC_LITE/src/radio_resources/DataRadioBearer.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/ENodeB.o: openair2/RRM_4_RRC_LITE/src/radio_resources/ENodeB.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/ENodeB.o openair2/RRM_4_RRC_LITE/src/radio_resources/ENodeB.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/LogicalChannel.o: openair2/RRM_4_RRC_LITE/src/radio_resources/LogicalChannel.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/LogicalChannel.o openair2/RRM_4_RRC_LITE/src/radio_resources/LogicalChannel.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Mobile.o: openair2/RRM_4_RRC_LITE/src/radio_resources/Mobile.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Mobile.o openair2/RRM_4_RRC_LITE/src/radio_resources/Mobile.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioBearer.o: openair2/RRM_4_RRC_LITE/src/radio_resources/RadioBearer.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioBearer.o openair2/RRM_4_RRC_LITE/src/radio_resources/RadioBearer.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioResources.o: openair2/RRM_4_RRC_LITE/src/radio_resources/RadioResources.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/RadioResources.o openair2/RRM_4_RRC_LITE/src/radio_resources/RadioResources.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/SignallingRadioBearer.o: openair2/RRM_4_RRC_LITE/src/radio_resources/SignallingRadioBearer.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/SignallingRadioBearer.o openair2/RRM_4_RRC_LITE/src/radio_resources/SignallingRadioBearer.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transaction.o: openair2/RRM_4_RRC_LITE/src/radio_resources/Transaction.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transaction.o openair2/RRM_4_RRC_LITE/src/radio_resources/Transaction.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transactions.o: openair2/RRM_4_RRC_LITE/src/radio_resources/Transactions.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/radio_resources/Transactions.o openair2/RRM_4_RRC_LITE/src/radio_resources/Transactions.cpp

${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/rrm.o: openair2/RRM_4_RRC_LITE/src/rrm.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/RRM_4_RRC_LITE/src/rrm.o openair2/RRM_4_RRC_LITE/src/rrm.cpp

${OBJECTDIR}/openair2/UTIL/AT_COMMANDS/parser.o: openair2/UTIL/AT_COMMANDS/parser.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/AT_COMMANDS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/AT_COMMANDS/parser.o openair2/UTIL/AT_COMMANDS/parser.c

${OBJECTDIR}/openair2/UTIL/BIGPHYS/bigphys.o: openair2/UTIL/BIGPHYS/bigphys.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/BIGPHYS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/BIGPHYS/bigphys.o openair2/UTIL/BIGPHYS/bigphys.c

${OBJECTDIR}/openair2/UTIL/CLI/cli.o: openair2/UTIL/CLI/cli.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/CLI
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/CLI/cli.o openair2/UTIL/CLI/cli.c

${OBJECTDIR}/openair2/UTIL/CLI/cli_cmd.o: openair2/UTIL/CLI/cli_cmd.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/CLI
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/CLI/cli_cmd.o openair2/UTIL/CLI/cli_cmd.c

${OBJECTDIR}/openair2/UTIL/CLI/cli_server.o: openair2/UTIL/CLI/cli_server.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/CLI
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/CLI/cli_server.o openair2/UTIL/CLI/cli_server.c

${OBJECTDIR}/openair2/UTIL/FIFO/pad_list.o: openair2/UTIL/FIFO/pad_list.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/FIFO
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/FIFO/pad_list.o openair2/UTIL/FIFO/pad_list.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/driver_entry.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/driver_entry.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/driver_entry.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/driver_entry.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_cas.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_cas.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_cas.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_cas.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_dcas.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_dcas.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_dcas.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_dcas.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_free.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_free.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_free.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_free.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_increment.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_increment.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_increment.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_increment.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_malloc.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_malloc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_malloc.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_abstraction/lfds611_abstraction_malloc.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_delete.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_delete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_delete.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_delete.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_get_and_set.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_get_and_set.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_get_and_set.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_get_and_set.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_new.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_new.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_new.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_new.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_pop_push.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_pop_push.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_pop_push.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_pop_push.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_query.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_query.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_query.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_freelist/lfds611_freelist_query.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_free.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_free.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_free.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_free.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_delete.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_delete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_delete.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_delete.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_new.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_new.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_new.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_new.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_query.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_query.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_query.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_query.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_queue.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_queue.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_queue.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_queue/lfds611_queue_queue.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_delete.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_delete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_delete.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_delete.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_new.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_new.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_new.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_new.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_query.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_query.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_query.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_ringbuffer/lfds611_ringbuffer_query.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_delete.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_delete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_delete.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_delete.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_get_and_set.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_get_and_set.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_get_and_set.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_get_and_set.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_link.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_link.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_link.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_link.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_new.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_new.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_new.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_slist/lfds611_slist_new.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_delete.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_delete.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_delete.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_delete.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_new.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_new.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_new.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_new.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_push_pop.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_push_pop.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_push_pop.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_push_pop.c

${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_query.o: openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_query.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_query.o openair2/UTIL/LFDS/liblfds6.1.1/liblfds611/src/lfds611_stack/lfds611_stack_query.c

${OBJECTDIR}/openair2/UTIL/LISTS/list.o: openair2/UTIL/LISTS/list.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LISTS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LISTS/list.o openair2/UTIL/LISTS/list.c

${OBJECTDIR}/openair2/UTIL/LISTS/list2.o: openair2/UTIL/LISTS/list2.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LISTS
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LISTS/list2.o openair2/UTIL/LISTS/list2.c

${OBJECTDIR}/openair2/UTIL/LOG/log.o: openair2/UTIL/LOG/log.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LOG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LOG/log.o openair2/UTIL/LOG/log.c

${OBJECTDIR}/openair2/UTIL/LOG/vcd_signal_dumper.o: openair2/UTIL/LOG/vcd_signal_dumper.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/LOG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/LOG/vcd_signal_dumper.o openair2/UTIL/LOG/vcd_signal_dumper.c

${OBJECTDIR}/openair2/UTIL/MATH/crc_byte.o: openair2/UTIL/MATH/crc_byte.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MATH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MATH/crc_byte.o openair2/UTIL/MATH/crc_byte.c

${OBJECTDIR}/openair2/UTIL/MATH/oml.o: openair2/UTIL/MATH/oml.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MATH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MATH/oml.o openair2/UTIL/MATH/oml.c

${OBJECTDIR}/openair2/UTIL/MATH/random.o: openair2/UTIL/MATH/random.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MATH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MATH/random.o openair2/UTIL/MATH/random.c

${OBJECTDIR}/openair2/UTIL/MATH/taus.o: openair2/UTIL/MATH/taus.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MATH
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MATH/taus.o openair2/UTIL/MATH/taus.c

${OBJECTDIR}/openair2/UTIL/MEM/mem_block.o: openair2/UTIL/MEM/mem_block.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MEM
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MEM/mem_block.o openair2/UTIL/MEM/mem_block.c

${OBJECTDIR}/openair2/UTIL/MEM/mem_mngt.o: openair2/UTIL/MEM/mem_mngt.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/MEM
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/MEM/mem_mngt.o openair2/UTIL/MEM/mem_mngt.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG.o: openair2/UTIL/OCG/OCG.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG.o openair2/UTIL/OCG/OCG.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_call_emu.o: openair2/UTIL/OCG/OCG_call_emu.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_call_emu.o openair2/UTIL/OCG/OCG_call_emu.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_config_mobi.o: openair2/UTIL/OCG/OCG_config_mobi.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_config_mobi.o openair2/UTIL/OCG/OCG_config_mobi.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_create_dir.o: openair2/UTIL/OCG/OCG_create_dir.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_create_dir.o openair2/UTIL/OCG/OCG_create_dir.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_detect_file.o: openair2/UTIL/OCG/OCG_detect_file.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_detect_file.o openair2/UTIL/OCG/OCG_detect_file.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_generate_report.o: openair2/UTIL/OCG/OCG_generate_report.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_generate_report.o openair2/UTIL/OCG/OCG_generate_report.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_get_opt.o: openair2/UTIL/OCG/OCG_get_opt.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_get_opt.o openair2/UTIL/OCG/OCG_get_opt.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_XML.o: openair2/UTIL/OCG/OCG_parse_XML.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_XML.o openair2/UTIL/OCG/OCG_parse_XML.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_filename.o: openair2/UTIL/OCG/OCG_parse_filename.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_parse_filename.o openair2/UTIL/OCG/OCG_parse_filename.c

${OBJECTDIR}/openair2/UTIL/OCG/OCG_save_XML.o: openair2/UTIL/OCG/OCG_save_XML.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OCG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OCG/OCG_save_XML.o openair2/UTIL/OCG/OCG_save_XML.c

${OBJECTDIR}/openair2/UTIL/OMG/client_traci_OMG.o: openair2/UTIL/OMG/client_traci_OMG.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/client_traci_OMG.o openair2/UTIL/OMG/client_traci_OMG.c

${OBJECTDIR}/openair2/UTIL/OMG/common.o: openair2/UTIL/OMG/common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/common.o openair2/UTIL/OMG/common.c

${OBJECTDIR}/openair2/UTIL/OMG/grid.o: openair2/UTIL/OMG/grid.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/grid.o openair2/UTIL/OMG/grid.c

${OBJECTDIR}/openair2/UTIL/OMG/id_manager.o: openair2/UTIL/OMG/id_manager.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/id_manager.o openair2/UTIL/OMG/id_manager.c

${OBJECTDIR}/openair2/UTIL/OMG/job.o: openair2/UTIL/OMG/job.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/job.o openair2/UTIL/OMG/job.c

${OBJECTDIR}/openair2/UTIL/OMG/mobility_parser.o: openair2/UTIL/OMG/mobility_parser.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/mobility_parser.o openair2/UTIL/OMG/mobility_parser.c

${OBJECTDIR}/openair2/UTIL/OMG/omg.o: openair2/UTIL/OMG/omg.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/omg.o openair2/UTIL/OMG/omg.c

${OBJECTDIR}/openair2/UTIL/OMG/omg_hashtable.o: openair2/UTIL/OMG/omg_hashtable.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/omg_hashtable.o openair2/UTIL/OMG/omg_hashtable.c

${OBJECTDIR}/openair2/UTIL/OMG/rwalk.o: openair2/UTIL/OMG/rwalk.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/rwalk.o openair2/UTIL/OMG/rwalk.c

${OBJECTDIR}/openair2/UTIL/OMG/rwp.o: openair2/UTIL/OMG/rwp.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/rwp.o openair2/UTIL/OMG/rwp.c

${OBJECTDIR}/openair2/UTIL/OMG/socket_traci_OMG.o: openair2/UTIL/OMG/socket_traci_OMG.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/socket_traci_OMG.o openair2/UTIL/OMG/socket_traci_OMG.c

${OBJECTDIR}/openair2/UTIL/OMG/static.o: openair2/UTIL/OMG/static.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/static.o openair2/UTIL/OMG/static.c

${OBJECTDIR}/openair2/UTIL/OMG/steadystaterwp.o: openair2/UTIL/OMG/steadystaterwp.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/steadystaterwp.o openair2/UTIL/OMG/steadystaterwp.c

${OBJECTDIR}/openair2/UTIL/OMG/storage_traci_OMG.o: openair2/UTIL/OMG/storage_traci_OMG.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/storage_traci_OMG.o openair2/UTIL/OMG/storage_traci_OMG.c

${OBJECTDIR}/openair2/UTIL/OMG/sumo.o: openair2/UTIL/OMG/sumo.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/sumo.o openair2/UTIL/OMG/sumo.c

${OBJECTDIR}/openair2/UTIL/OMG/trace.o: openair2/UTIL/OMG/trace.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/trace.o openair2/UTIL/OMG/trace.c

${OBJECTDIR}/openair2/UTIL/OMG/trace_hashtable.o: openair2/UTIL/OMG/trace_hashtable.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMG/trace_hashtable.o openair2/UTIL/OMG/trace_hashtable.c

${OBJECTDIR}/openair2/UTIL/OMV/communicationthread.o: openair2/UTIL/OMV/communicationthread.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMV
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMV/communicationthread.o openair2/UTIL/OMV/communicationthread.cpp

${OBJECTDIR}/openair2/UTIL/OMV/mywindow.o: openair2/UTIL/OMV/mywindow.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMV
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMV/mywindow.o openair2/UTIL/OMV/mywindow.cpp

${OBJECTDIR}/openair2/UTIL/OMV/omv.o: openair2/UTIL/OMV/omv.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMV
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMV/omv.o openair2/UTIL/OMV/omv.cpp

${OBJECTDIR}/openair2/UTIL/OMV/openglwidget.o: openair2/UTIL/OMV/openglwidget.cpp 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OMV
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OMV/openglwidget.o openair2/UTIL/OMV/openglwidget.cpp

${OBJECTDIR}/openair2/UTIL/OPT/packet-mac-lte.o: openair2/UTIL/OPT/packet-mac-lte.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OPT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OPT/packet-mac-lte.o openair2/UTIL/OPT/packet-mac-lte.c

${OBJECTDIR}/openair2/UTIL/OPT/probe.o: openair2/UTIL/OPT/probe.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OPT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OPT/probe.o openair2/UTIL/OPT/probe.c

${OBJECTDIR}/openair2/UTIL/OPT/socket_sender.o: openair2/UTIL/OPT/socket_sender.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OPT
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OPT/socket_sender.o openair2/UTIL/OPT/socket_sender.c

${OBJECTDIR}/openair2/UTIL/OSA/osa_key_deriver.o: openair2/UTIL/OSA/osa_key_deriver.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OSA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OSA/osa_key_deriver.o openair2/UTIL/OSA/osa_key_deriver.c

${OBJECTDIR}/openair2/UTIL/OSA/osa_rijndael.o: openair2/UTIL/OSA/osa_rijndael.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OSA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OSA/osa_rijndael.o openair2/UTIL/OSA/osa_rijndael.c

${OBJECTDIR}/openair2/UTIL/OSA/osa_snow3g.o: openair2/UTIL/OSA/osa_snow3g.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OSA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OSA/osa_snow3g.o openair2/UTIL/OSA/osa_snow3g.c

${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eea.o: openair2/UTIL/OSA/osa_stream_eea.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OSA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eea.o openair2/UTIL/OSA/osa_stream_eea.c

${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eia.o: openair2/UTIL/OSA/osa_stream_eia.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OSA
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OSA/osa_stream_eia.o openair2/UTIL/OSA/osa_stream_eia.c

${OBJECTDIR}/openair2/UTIL/OTG/main.o: openair2/UTIL/OTG/main.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/main.o openair2/UTIL/OTG/main.c

${OBJECTDIR}/openair2/UTIL/OTG/otg.o: openair2/UTIL/OTG/otg.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg.o openair2/UTIL/OTG/otg.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_form.o: openair2/UTIL/OTG/otg_form.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_form.o openair2/UTIL/OTG/otg_form.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_kpi.o: openair2/UTIL/OTG/otg_kpi.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_kpi.o openair2/UTIL/OTG/otg_kpi.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_models.o: openair2/UTIL/OTG/otg_models.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_models.o openair2/UTIL/OTG/otg_models.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_rx.o: openair2/UTIL/OTG/otg_rx.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_rx.o openair2/UTIL/OTG/otg_rx.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_rx_socket.o: openair2/UTIL/OTG/otg_rx_socket.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_rx_socket.o openair2/UTIL/OTG/otg_rx_socket.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_tx.o: openair2/UTIL/OTG/otg_tx.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_tx.o openair2/UTIL/OTG/otg_tx.c

${OBJECTDIR}/openair2/UTIL/OTG/otg_tx_socket.o: openair2/UTIL/OTG/otg_tx_socket.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/OTG
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/OTG/otg_tx_socket.o openair2/UTIL/OTG/otg_tx_socket.c

${OBJECTDIR}/openair2/UTIL/TIMER/umts_timer.o: openair2/UTIL/TIMER/umts_timer.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/TIMER
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/TIMER/umts_timer.o openair2/UTIL/TIMER/umts_timer.c

${OBJECTDIR}/openair2/UTIL/TRACE/fifo_printf.o: openair2/UTIL/TRACE/fifo_printf.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/UTIL/TRACE
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/UTIL/TRACE/fifo_printf.o openair2/UTIL/TRACE/fifo_printf.c

${OBJECTDIR}/openair2/X2AP/x2ap.o: openair2/X2AP/x2ap.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/X2AP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/X2AP/x2ap.o openair2/X2AP/x2ap.c

${OBJECTDIR}/openair2/X2AP/x2ap_common.o: openair2/X2AP/x2ap_common.c 
	${MKDIR} -p ${OBJECTDIR}/openair2/X2AP
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/openair2/X2AP/x2ap_common.o openair2/X2AP/x2ap_common.c

${OBJECTDIR}/phy_procedures_sim_form.o: phy_procedures_sim_form.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/phy_procedures_sim_form.o phy_procedures_sim_form.c

${OBJECTDIR}/plot_results.o: plot_results.m 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/plot_results.o plot_results.m

${OBJECTDIR}/sinr_sim.o: sinr_sim.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sinr_sim.o sinr_sim.c

${OBJECTDIR}/threadpool.o: threadpool.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -DOAI_EMU -DOPENAIR_LTE -DPCIE_INTERFACE -DPHY_ABSTRACTION_UL -DUSER_MODE -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/threadpool.o threadpool.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} oaisim

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
