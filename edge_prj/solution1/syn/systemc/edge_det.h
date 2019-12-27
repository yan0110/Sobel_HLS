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
#include "edge_det_sob_x.h"
#include "edge_det_sob_y.h"
#include "edge_det_block.h"

namespace ap_rtl {

struct edge_det : public sc_module {
    // Port declarations 17
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
    convolution* grp_convolution_fu_199;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > sob_x_ce0;
    sc_signal< sc_lv<32> > sob_x_q0;
    sc_signal< sc_logic > sob_y_ce0;
    sc_signal< sc_lv<32> > sob_y_q0;
    sc_signal< sc_lv<14> > next_mul_fu_213_p2;
    sc_signal< sc_lv<14> > next_mul_reg_386;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > i_1_fu_225_p2;
    sc_signal< sc_lv<7> > i_1_reg_394;
    sc_signal< sc_lv<1> > tmp_fu_231_p2;
    sc_signal< sc_lv<1> > tmp_reg_399;
    sc_signal< sc_lv<1> > exitcond3_fu_219_p2;
    sc_signal< sc_lv<14> > j_cast7_fu_237_p1;
    sc_signal< sc_lv<14> > j_cast7_reg_404;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > j_1_fu_248_p2;
    sc_signal< sc_lv<7> > j_1_reg_413;
    sc_signal< sc_lv<1> > or_cond_fu_260_p2;
    sc_signal< sc_lv<1> > or_cond_reg_418;
    sc_signal< sc_lv<1> > exitcond2_fu_242_p2;
    sc_signal< sc_lv<2> > m_1_fu_285_p2;
    sc_signal< sc_lv<2> > m_1_reg_425;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<14> > tmp_9_fu_301_p2;
    sc_signal< sc_lv<14> > tmp_9_reg_430;
    sc_signal< sc_lv<1> > exitcond1_fu_279_p2;
    sc_signal< sc_lv<5> > tmp_s_fu_319_p2;
    sc_signal< sc_lv<5> > tmp_s_reg_435;
    sc_signal< sc_lv<2> > n_1_fu_335_p2;
    sc_signal< sc_lv<2> > n_1_reg_443;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_329_p2;
    sc_signal< sc_lv<5> > tmp_12_fu_368_p2;
    sc_signal< sc_lv<5> > tmp_12_reg_453;
    sc_signal< sc_lv<32> > grp_convolution_fu_199_ap_return;
    sc_signal< sc_lv<32> > value_reg_458;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_convolution_fu_199_ap_done;
    sc_signal< sc_lv<14> > grp_fu_208_p2;
    sc_signal< sc_lv<14> > tmp_6_reg_463;
    sc_signal< sc_lv<4> > block_address0;
    sc_signal< sc_logic > block_ce0;
    sc_signal< sc_logic > block_we0;
    sc_signal< sc_lv<32> > block_q0;
    sc_signal< sc_logic > grp_convolution_fu_199_ap_start;
    sc_signal< sc_logic > grp_convolution_fu_199_ap_idle;
    sc_signal< sc_logic > grp_convolution_fu_199_ap_ready;
    sc_signal< sc_lv<4> > grp_convolution_fu_199_operatr_address0;
    sc_signal< sc_logic > grp_convolution_fu_199_operatr_ce0;
    sc_signal< sc_lv<32> > grp_convolution_fu_199_operatr_q0;
    sc_signal< sc_lv<4> > grp_convolution_fu_199_block_r_address0;
    sc_signal< sc_logic > grp_convolution_fu_199_block_r_ce0;
    sc_signal< sc_lv<7> > i_reg_142;
    sc_signal< sc_lv<14> > phi_mul_reg_154;
    sc_signal< sc_lv<7> > j_reg_166;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< bool > ap_block_state9_on_subcall_done;
    sc_signal< sc_lv<2> > m_reg_177;
    sc_signal< sc_lv<2> > n_reg_188;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_reg_grp_convolution_fu_199_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_5_fu_265_p1;
    sc_signal< sc_lv<64> > tmp_11_fu_363_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_376_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_381_p1;
    sc_signal< sc_lv<14> > grp_fu_208_p1;
    sc_signal< sc_lv<1> > tmp_3_fu_254_p2;
    sc_signal< sc_lv<7> > m_cast6_fu_271_p1;
    sc_signal< sc_lv<7> > tmp_8_fu_291_p2;
    sc_signal< sc_lv<7> > tmp_9_fu_301_p0;
    sc_signal< sc_lv<4> > p_shl_fu_307_p3;
    sc_signal< sc_lv<5> > p_shl_cast_fu_315_p1;
    sc_signal< sc_lv<5> > m_cast5_fu_275_p1;
    sc_signal< sc_lv<12> > tmp_15_fu_341_p4;
    sc_signal< sc_lv<14> > tmp1_fu_350_p3;
    sc_signal< sc_lv<14> > tmp_10_fu_358_p2;
    sc_signal< sc_lv<5> > n_cast3_fu_325_p1;
    sc_signal< sc_lv<32> > tmp_12_cast_fu_373_p1;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_lv<14> > tmp_9_fu_301_p00;
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
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<14> ap_const_lv14_64;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_61;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
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
    void thread_exitcond1_fu_279_p2();
    void thread_exitcond2_fu_242_p2();
    void thread_exitcond3_fu_219_p2();
    void thread_exitcond_fu_329_p2();
    void thread_grp_convolution_fu_199_ap_start();
    void thread_grp_convolution_fu_199_operatr_q0();
    void thread_grp_fu_208_p1();
    void thread_grp_fu_208_p2();
    void thread_i_1_fu_225_p2();
    void thread_j_1_fu_248_p2();
    void thread_j_cast7_fu_237_p1();
    void thread_m_1_fu_285_p2();
    void thread_m_cast5_fu_275_p1();
    void thread_m_cast6_fu_271_p1();
    void thread_n_1_fu_335_p2();
    void thread_n_cast3_fu_325_p1();
    void thread_next_mul_fu_213_p2();
    void thread_or_cond_fu_260_p2();
    void thread_p_shl_cast_fu_315_p1();
    void thread_p_shl_fu_307_p3();
    void thread_sob_x1_address0();
    void thread_sob_x1_ce0();
    void thread_sob_x1_d0();
    void thread_sob_x1_we0();
    void thread_sob_x_ce0();
    void thread_sob_y1_address0();
    void thread_sob_y1_ce0();
    void thread_sob_y1_d0();
    void thread_sob_y1_we0();
    void thread_sob_y_ce0();
    void thread_tmp1_fu_350_p3();
    void thread_tmp_10_fu_358_p2();
    void thread_tmp_11_fu_363_p1();
    void thread_tmp_12_cast_fu_373_p1();
    void thread_tmp_12_fu_368_p2();
    void thread_tmp_13_fu_376_p1();
    void thread_tmp_15_fu_341_p4();
    void thread_tmp_3_fu_254_p2();
    void thread_tmp_5_fu_265_p1();
    void thread_tmp_7_fu_381_p1();
    void thread_tmp_8_fu_291_p2();
    void thread_tmp_9_fu_301_p0();
    void thread_tmp_9_fu_301_p00();
    void thread_tmp_9_fu_301_p2();
    void thread_tmp_fu_231_p2();
    void thread_tmp_s_fu_319_p2();
    void thread_video_address0();
    void thread_video_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif