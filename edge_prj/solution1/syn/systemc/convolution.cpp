// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "convolution.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic convolution::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic convolution::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> convolution::ap_ST_fsm_state1 = "1";
const sc_lv<4> convolution::ap_ST_fsm_state2 = "10";
const sc_lv<4> convolution::ap_ST_fsm_state3 = "100";
const sc_lv<4> convolution::ap_ST_fsm_state4 = "1000";
const sc_lv<32> convolution::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> convolution::ap_const_lv32_1 = "1";
const sc_lv<1> convolution::ap_const_lv1_0 = "0";
const sc_lv<32> convolution::ap_const_lv32_2 = "10";
const sc_lv<2> convolution::ap_const_lv2_0 = "00";
const sc_lv<1> convolution::ap_const_lv1_1 = "1";
const sc_lv<32> convolution::ap_const_lv32_3 = "11";
const sc_lv<2> convolution::ap_const_lv2_3 = "11";
const sc_lv<2> convolution::ap_const_lv2_1 = "1";
const bool convolution::ap_const_boolean_1 = true;

convolution::convolution(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_94_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_94_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_94_p2 );
    sensitive << ( value_fu_32 );

    SC_METHOD(thread_block_r_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_18_fu_149_p1 );

    SC_METHOD(thread_block_r_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_exitcond1_fu_94_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_exitcond_fu_128_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_71 );

    SC_METHOD(thread_i_2_fu_100_p2);
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_i_cast3_fu_90_p1);
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_j_2_fu_134_p2);
    sensitive << ( j_reg_71 );

    SC_METHOD(thread_j_cast1_fu_124_p1);
    sensitive << ( j_reg_71 );

    SC_METHOD(thread_operatr_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_18_fu_149_p1 );

    SC_METHOD(thread_operatr_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_p_shl_cast_fu_114_p1);
    sensitive << ( p_shl_fu_106_p3 );

    SC_METHOD(thread_p_shl_fu_106_p3);
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_tmp_18_fu_149_p1);
    sensitive << ( tmp_cast_fu_145_p1 );

    SC_METHOD(thread_tmp_19_fu_155_p0);
    sensitive << ( operatr_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_19_fu_155_p1);
    sensitive << ( block_r_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_19_fu_155_p2);
    sensitive << ( tmp_19_fu_155_p0 );
    sensitive << ( tmp_19_fu_155_p1 );

    SC_METHOD(thread_tmp_cast_fu_145_p1);
    sensitive << ( tmp_s_fu_140_p2 );

    SC_METHOD(thread_tmp_fu_118_p2);
    sensitive << ( p_shl_cast_fu_114_p1 );
    sensitive << ( i_cast3_fu_90_p1 );

    SC_METHOD(thread_tmp_s_fu_140_p2);
    sensitive << ( tmp_reg_187 );
    sensitive << ( j_cast1_fu_124_p1 );

    SC_METHOD(thread_value_2_fu_161_p2);
    sensitive << ( value_fu_32 );
    sensitive << ( tmp_19_fu_155_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_94_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond_fu_128_p2 );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "convolution_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, operatr_address0, "(port)operatr_address0");
    sc_trace(mVcdFile, operatr_ce0, "(port)operatr_ce0");
    sc_trace(mVcdFile, operatr_q0, "(port)operatr_q0");
    sc_trace(mVcdFile, block_r_address0, "(port)block_r_address0");
    sc_trace(mVcdFile, block_r_ce0, "(port)block_r_ce0");
    sc_trace(mVcdFile, block_r_q0, "(port)block_r_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_2_fu_100_p2, "i_2_fu_100_p2");
    sc_trace(mVcdFile, i_2_reg_182, "i_2_reg_182");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_118_p2, "tmp_fu_118_p2");
    sc_trace(mVcdFile, tmp_reg_187, "tmp_reg_187");
    sc_trace(mVcdFile, exitcond1_fu_94_p2, "exitcond1_fu_94_p2");
    sc_trace(mVcdFile, j_2_fu_134_p2, "j_2_fu_134_p2");
    sc_trace(mVcdFile, j_2_reg_195, "j_2_reg_195");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond_fu_128_p2, "exitcond_fu_128_p2");
    sc_trace(mVcdFile, i_reg_60, "i_reg_60");
    sc_trace(mVcdFile, j_reg_71, "j_reg_71");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_18_fu_149_p1, "tmp_18_fu_149_p1");
    sc_trace(mVcdFile, value_fu_32, "value_fu_32");
    sc_trace(mVcdFile, value_2_fu_161_p2, "value_2_fu_161_p2");
    sc_trace(mVcdFile, p_shl_fu_106_p3, "p_shl_fu_106_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_114_p1, "p_shl_cast_fu_114_p1");
    sc_trace(mVcdFile, i_cast3_fu_90_p1, "i_cast3_fu_90_p1");
    sc_trace(mVcdFile, j_cast1_fu_124_p1, "j_cast1_fu_124_p1");
    sc_trace(mVcdFile, tmp_s_fu_140_p2, "tmp_s_fu_140_p2");
    sc_trace(mVcdFile, tmp_cast_fu_145_p1, "tmp_cast_fu_145_p1");
    sc_trace(mVcdFile, tmp_19_fu_155_p0, "tmp_19_fu_155_p0");
    sc_trace(mVcdFile, tmp_19_fu_155_p1, "tmp_19_fu_155_p1");
    sc_trace(mVcdFile, tmp_19_fu_155_p2, "tmp_19_fu_155_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

convolution::~convolution() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void convolution::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_128_p2.read(), ap_const_lv1_1))) {
        i_reg_60 = i_2_reg_182.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_60 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_reg_71 = j_2_reg_195.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_94_p2.read(), ap_const_lv1_0))) {
        j_reg_71 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        value_fu_32 = value_2_fu_161_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        value_fu_32 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_2_reg_182 = i_2_fu_100_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_2_reg_195 = j_2_fu_134_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_94_p2.read(), ap_const_lv1_0))) {
        tmp_reg_187 = tmp_fu_118_p2.read();
    }
}

void convolution::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void convolution::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void convolution::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void convolution::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void convolution::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_94_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void convolution::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void convolution::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_94_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void convolution::thread_ap_return() {
    ap_return = value_fu_32.read();
}

void convolution::thread_block_r_address0() {
    block_r_address0 =  (sc_lv<4>) (tmp_18_fu_149_p1.read());
}

void convolution::thread_block_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        block_r_ce0 = ap_const_logic_1;
    } else {
        block_r_ce0 = ap_const_logic_0;
    }
}

void convolution::thread_exitcond1_fu_94_p2() {
    exitcond1_fu_94_p2 = (!i_reg_60.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_60.read() == ap_const_lv2_3);
}

void convolution::thread_exitcond_fu_128_p2() {
    exitcond_fu_128_p2 = (!j_reg_71.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_71.read() == ap_const_lv2_3);
}

void convolution::thread_i_2_fu_100_p2() {
    i_2_fu_100_p2 = (!i_reg_60.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_reg_60.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void convolution::thread_i_cast3_fu_90_p1() {
    i_cast3_fu_90_p1 = esl_zext<5,2>(i_reg_60.read());
}

void convolution::thread_j_2_fu_134_p2() {
    j_2_fu_134_p2 = (!j_reg_71.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(j_reg_71.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void convolution::thread_j_cast1_fu_124_p1() {
    j_cast1_fu_124_p1 = esl_zext<5,2>(j_reg_71.read());
}

void convolution::thread_operatr_address0() {
    operatr_address0 =  (sc_lv<4>) (tmp_18_fu_149_p1.read());
}

void convolution::thread_operatr_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        operatr_ce0 = ap_const_logic_1;
    } else {
        operatr_ce0 = ap_const_logic_0;
    }
}

void convolution::thread_p_shl_cast_fu_114_p1() {
    p_shl_cast_fu_114_p1 = esl_zext<5,4>(p_shl_fu_106_p3.read());
}

void convolution::thread_p_shl_fu_106_p3() {
    p_shl_fu_106_p3 = esl_concat<2,2>(i_reg_60.read(), ap_const_lv2_0);
}

void convolution::thread_tmp_18_fu_149_p1() {
    tmp_18_fu_149_p1 = esl_zext<64,32>(tmp_cast_fu_145_p1.read());
}

void convolution::thread_tmp_19_fu_155_p0() {
    tmp_19_fu_155_p0 = operatr_q0.read();
}

void convolution::thread_tmp_19_fu_155_p1() {
    tmp_19_fu_155_p1 = block_r_q0.read();
}

void convolution::thread_tmp_19_fu_155_p2() {
    tmp_19_fu_155_p2 = (!tmp_19_fu_155_p0.read().is_01() || !tmp_19_fu_155_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_19_fu_155_p0.read()) * sc_bigint<32>(tmp_19_fu_155_p1.read());
}

void convolution::thread_tmp_cast_fu_145_p1() {
    tmp_cast_fu_145_p1 = esl_sext<32,5>(tmp_s_fu_140_p2.read());
}

void convolution::thread_tmp_fu_118_p2() {
    tmp_fu_118_p2 = (!p_shl_cast_fu_114_p1.read().is_01() || !i_cast3_fu_90_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(p_shl_cast_fu_114_p1.read()) - sc_biguint<5>(i_cast3_fu_90_p1.read()));
}

void convolution::thread_tmp_s_fu_140_p2() {
    tmp_s_fu_140_p2 = (!tmp_reg_187.read().is_01() || !j_cast1_fu_124_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_reg_187.read()) + sc_biguint<5>(j_cast1_fu_124_p1.read()));
}

void convolution::thread_value_2_fu_161_p2() {
    value_2_fu_161_p2 = (!tmp_19_fu_155_p2.read().is_01() || !value_fu_32.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_19_fu_155_p2.read()) + sc_biguint<32>(value_fu_32.read()));
}

void convolution::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_94_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond_fu_128_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

