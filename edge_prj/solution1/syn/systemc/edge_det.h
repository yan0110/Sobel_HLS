// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _edge_det_HH_
#define _edge_det_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "convolution.h"
#include "edge_det_ama_addmbkb.h"
#include "edge_det_sob_x.h"
#include "edge_det_sob_y.h"
#include "edge_det_block.h"

namespace ap_rtl {

struct edge_det : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > video_address0;
    sc_out< sc_logic > video_ce0;
    sc_in< sc_lv<32> > video_q0;
    sc_out< sc_lv<14> > sob_x1_address0;
    sc_out< sc_logic > sob_x1_ce0;
    sc_out< sc_logic > sob_x1_we0;
    sc_out< sc_lv<32> > sob_x1_d0;
    sc_out< sc_lv<14> > sob_y1_address0;
    sc_out< sc_logic > sob_y1_ce0;
    sc_out< sc_logic > sob_y1_we0;
    sc_out< sc_lv<32> > sob_y1_d0;
    sc_out< sc_lv<14> > sob_xy1_address0;
    sc_out< sc_logic > sob_xy1_ce0;
    sc_out< sc_logic > sob_xy1_we0;
    sc_out< sc_lv<32> > sob_xy1_d0;


    // Module declarations
    edge_det(sc_module_name name);
    SC_HAS_PROCESS(edge_det);

    ~edge_det();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    edge_det_sob_x* sob_x_U;
    edge_det_sob_y* sob_y_U;
    edge_det_block* block_U;
    convolution* grp_convolution_fu_207;
    edge_det_ama_addmbkb<1,1,2,7,8,7,14>* edge_det_ama_addmbkb_U3;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > sob_x_ce0;
    sc_signal< sc_lv<32> > sob_x_q0;
    sc_signal< sc_logic > sob_y_ce0;
    sc_signal< sc_lv<32> > sob_y_q0;
    sc_signal< sc_lv<14> > next_mul_fu_221_p2;
    sc_signal< sc_lv<14> > next_mul_reg_456;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > i_1_fu_233_p2;
    sc_signal< sc_lv<7> > i_1_reg_464;
    sc_signal< sc_lv<1> > tmp_fu_239_p2;
    sc_signal< sc_lv<1> > tmp_reg_469;
    sc_signal< sc_lv<1> > exitcond3_fu_227_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_245_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_474;
    sc_signal< sc_lv<14> > j_cast_fu_251_p1;
    sc_signal< sc_lv<14> > j_cast_reg_479;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > j_1_fu_262_p2;
    sc_signal< sc_lv<7> > j_1_reg_488;
    sc_signal< sc_lv<1> > or_cond5_fu_290_p2;
    sc_signal< sc_lv<1> > or_cond5_reg_493;
    sc_signal< sc_lv<1> > exitcond2_fu_256_p2;
    sc_signal< sc_lv<2> > m_1_fu_316_p2;
    sc_signal< sc_lv<2> > m_1_reg_500;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > tmp_11_fu_334_p2;
    sc_signal< sc_lv<5> > tmp_11_reg_505;
    sc_signal< sc_lv<1> > exitcond1_fu_310_p2;
    sc_signal< sc_lv<15> > tmp3_cast_fu_340_p1;
    sc_signal< sc_lv<15> > tmp3_cast_reg_510;
    sc_signal< sc_lv<14> > grp_fu_216_p2;
    sc_signal< sc_lv<14> > tmp_8_reg_515;
    sc_signal< sc_lv<2> > n_1_fu_357_p2;
    sc_signal< sc_lv<2> > n_1_reg_523;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_351_p2;
    sc_signal< sc_lv<5> > tmp_16_fu_383_p2;
    sc_signal< sc_lv<5> > tmp_16_reg_533;
    sc_signal< sc_lv<32> > grp_convolution_fu_207_ap_return;
    sc_signal< sc_lv<32> > value_reg_538;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_convolution_fu_207_ap_done;
    sc_signal< sc_lv<4> > block_address0;
    sc_signal< sc_logic > block_ce0;
    sc_signal< sc_logic > block_we0;
    sc_signal< sc_lv<32> > block_q0;
    sc_signal< sc_logic > grp_convolution_fu_207_ap_start;
    sc_signal< sc_logic > grp_convolution_fu_207_ap_idle;
    sc_signal< sc_logic > grp_convolution_fu_207_ap_ready;
    sc_signal< sc_lv<4> > grp_convolution_fu_207_operatr_address0;
    sc_signal< sc_logic > grp_convolution_fu_207_operatr_ce0;
    sc_signal< sc_lv<32> > grp_convolution_fu_207_operatr_q0;
    sc_signal< sc_lv<4> > grp_convolution_fu_207_block_r_address0;
    sc_signal< sc_logic > grp_convolution_fu_207_block_r_ce0;
    sc_signal< sc_lv<7> > i_reg_150;
    sc_signal< sc_lv<14> > phi_mul_reg_162;
    sc_signal< sc_lv<7> > j_reg_174;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< bool > ap_block_state9_on_subcall_done;
    sc_signal< sc_lv<2> > m_reg_185;
    sc_signal< sc_lv<2> > n_reg_196;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_reg_grp_convolution_fu_207_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_7_fu_296_p1;
    sc_signal< sc_lv<64> > tmp_15_fu_378_p1;
    sc_signal< sc_lv<64> > tmp_17_fu_391_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_396_p1;
    sc_signal< sc_lv<14> > grp_fu_216_p1;
    sc_signal< sc_lv<1> > tmp_4_fu_268_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_274_p2;
    sc_signal< sc_lv<1> > tmp2_fu_285_p2;
    sc_signal< sc_lv<1> > tmp1_fu_280_p2;
    sc_signal< sc_lv<4> > p_shl_fu_322_p3;
    sc_signal< sc_lv<5> > p_shl_cast_fu_330_p1;
    sc_signal< sc_lv<5> > m_cast8_fu_306_p1;
    sc_signal< sc_lv<14> > grp_fu_446_p4;
    sc_signal< sc_lv<8> > n_cast5_fu_347_p1;
    sc_signal< sc_lv<8> > tmp4_fu_363_p2;
    sc_signal< sc_lv<15> > tmp4_cast_fu_369_p1;
    sc_signal< sc_lv<15> > tmp_14_fu_373_p2;
    sc_signal< sc_lv<5> > n_cast6_fu_343_p1;
    sc_signal< sc_lv<32> > tmp_16_cast_fu_388_p1;
    sc_signal< sc_lv<1> > abscond_fu_408_p2;
    sc_signal< sc_lv<32> > neg_fu_402_p2;
    sc_signal< sc_lv<1> > abscond1_fu_427_p2;
    sc_signal< sc_lv<32> > neg9_fu_422_p2;
    sc_signal< sc_lv<32> > abs_fu_414_p3;
    sc_signal< sc_lv<32> > abs1_fu_432_p3;
    sc_signal< sc_lv<2> > grp_fu_446_p0;
    sc_signal< sc_lv<8> > grp_fu_446_p2;
    sc_signal< sc_lv<7> > grp_fu_446_p3;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_lv<7> > grp_fu_446_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<14> ap_const_lv14_64;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_63;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<8> ap_const_lv8_9B;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_abs1_fu_432_p3();
    void thread_abs_fu_414_p3();
    void thread_abscond1_fu_427_p2();
    void thread_abscond_fu_408_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state9_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_block_address0();
    void thread_block_ce0();
    void thread_block_we0();
    void thread_exitcond1_fu_310_p2();
    void thread_exitcond2_fu_256_p2();
    void thread_exitcond3_fu_227_p2();
    void thread_exitcond_fu_351_p2();
    void thread_grp_convolution_fu_207_ap_start();
    void thread_grp_convolution_fu_207_operatr_q0();
    void thread_grp_fu_216_p1();
    void thread_grp_fu_216_p2();
    void thread_grp_fu_446_p0();
    void thread_grp_fu_446_p00();
    void thread_grp_fu_446_p2();
    void thread_grp_fu_446_p3();
    void thread_i_1_fu_233_p2();
    void thread_j_1_fu_262_p2();
    void thread_j_cast_fu_251_p1();
    void thread_m_1_fu_316_p2();
    void thread_m_cast8_fu_306_p1();
    void thread_n_1_fu_357_p2();
    void thread_n_cast5_fu_347_p1();
    void thread_n_cast6_fu_343_p1();
    void thread_neg9_fu_422_p2();
    void thread_neg_fu_402_p2();
    void thread_next_mul_fu_221_p2();
    void thread_or_cond5_fu_290_p2();
    void thread_p_shl_cast_fu_330_p1();
    void thread_p_shl_fu_322_p3();
    void thread_sob_x1_address0();
    void thread_sob_x1_ce0();
    void thread_sob_x1_d0();
    void thread_sob_x1_we0();
    void thread_sob_x_ce0();
    void thread_sob_xy1_address0();
    void thread_sob_xy1_ce0();
    void thread_sob_xy1_d0();
    void thread_sob_xy1_we0();
    void thread_sob_y1_address0();
    void thread_sob_y1_ce0();
    void thread_sob_y1_d0();
    void thread_sob_y1_we0();
    void thread_sob_y_ce0();
    void thread_tmp1_fu_280_p2();
    void thread_tmp2_fu_285_p2();
    void thread_tmp3_cast_fu_340_p1();
    void thread_tmp4_cast_fu_369_p1();
    void thread_tmp4_fu_363_p2();
    void thread_tmp_11_fu_334_p2();
    void thread_tmp_14_fu_373_p2();
    void thread_tmp_15_fu_378_p1();
    void thread_tmp_16_cast_fu_388_p1();
    void thread_tmp_16_fu_383_p2();
    void thread_tmp_17_fu_391_p1();
    void thread_tmp_1_fu_245_p2();
    void thread_tmp_4_fu_268_p2();
    void thread_tmp_5_fu_274_p2();
    void thread_tmp_7_fu_296_p1();
    void thread_tmp_9_fu_396_p1();
    void thread_tmp_fu_239_p2();
    void thread_video_address0();
    void thread_video_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
