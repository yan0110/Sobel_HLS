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
const sc_lv<3> convolution::ap_ST_fsm_state1 = "1";
const sc_lv<3> convolution::ap_ST_fsm_state2 = "10";
const sc_lv<3> convolution::ap_ST_fsm_state3 = "100";
const sc_lv<32> convolution::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> convolution::ap_const_lv32_1 = "1";
const sc_lv<32> convolution::ap_const_lv32_2 = "10";
const sc_lv<2> convolution::ap_const_lv2_0 = "00";
const sc_lv<2> convolution::ap_const_lv2_3 = "11";
const sc_lv<2> convolution::ap_const_lv2_1 = "1";
const sc_lv<5> convolution::ap_const_lv5_1 = "1";
const sc_lv<1> convolution::ap_const_lv1_1 = "1";
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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_79_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_79_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_79_p2 );
    sensitive << ( value_reg_52 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_block_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_14_fu_119_p1 );

    SC_METHOD(thread_block_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_exitcond1_fu_79_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_64 );

    SC_METHOD(thread_i_2_fu_85_p2);
    sensitive << ( i_reg_64 );

    SC_METHOD(thread_i_cast3_fu_75_p1);
    sensitive << ( i_reg_64 );

    SC_METHOD(thread_operatr_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_14_fu_119_p1 );

    SC_METHOD(thread_operatr_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_shl_cast_fu_99_p1);
    sensitive << ( p_shl_fu_91_p3 );

    SC_METHOD(thread_p_shl_fu_91_p3);
    sensitive << ( i_reg_64 );

    SC_METHOD(thread_tmp_14_fu_119_p1);
    sensitive << ( tmp_cast_fu_115_p1 );

    SC_METHOD(thread_tmp_16_fu_131_p2);
    sensitive << ( operatr_q0 );
    sensitive << ( tmp_1_fu_125_p2 );

    SC_METHOD(thread_tmp_17_fu_137_p0);
    sensitive << ( block_r_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_17_fu_137_p2);
    sensitive << ( tmp_17_fu_137_p0 );
    sensitive << ( tmp_16_fu_131_p2 );

    SC_METHOD(thread_tmp_1_fu_125_p2);
    sensitive << ( operatr_q0 );

    SC_METHOD(thread_tmp_cast_fu_115_p1);
    sensitive << ( tmp_s_fu_109_p2 );

    SC_METHOD(thread_tmp_fu_103_p2);
    sensitive << ( p_shl_cast_fu_99_p1 );
    sensitive << ( i_cast3_fu_75_p1 );

    SC_METHOD(thread_tmp_s_fu_109_p2);
    sensitive << ( tmp_fu_103_p2 );

    SC_METHOD(thread_value_2_fu_143_p2);
    sensitive << ( value_reg_52 );
    sensitive << ( tmp_17_fu_137_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_79_p2 );

    ap_CS_fsm = "001";
    ap_return_preg = "00000000000000000000000000000000";
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
    sc_trace(mVcdFile, i_2_fu_85_p2, "i_2_fu_85_p2");
    sc_trace(mVcdFile, i_2_reg_152, "i_2_reg_152");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, exitcond1_fu_79_p2, "exitcond1_fu_79_p2");
    sc_trace(mVcdFile, value_2_fu_143_p2, "value_2_fu_143_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, value_reg_52, "value_reg_52");
    sc_trace(mVcdFile, i_reg_64, "i_reg_64");
    sc_trace(mVcdFile, tmp_14_fu_119_p1, "tmp_14_fu_119_p1");
    sc_trace(mVcdFile, p_shl_fu_91_p3, "p_shl_fu_91_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_99_p1, "p_shl_cast_fu_99_p1");
    sc_trace(mVcdFile, i_cast3_fu_75_p1, "i_cast3_fu_75_p1");
    sc_trace(mVcdFile, tmp_fu_103_p2, "tmp_fu_103_p2");
    sc_trace(mVcdFile, tmp_s_fu_109_p2, "tmp_s_fu_109_p2");
    sc_trace(mVcdFile, tmp_cast_fu_115_p1, "tmp_cast_fu_115_p1");
    sc_trace(mVcdFile, tmp_1_fu_125_p2, "tmp_1_fu_125_p2");
    sc_trace(mVcdFile, tmp_17_fu_137_p0, "tmp_17_fu_137_p0");
    sc_trace(mVcdFile, tmp_16_fu_131_p2, "tmp_16_fu_131_p2");
    sc_trace(mVcdFile, tmp_17_fu_137_p2, "tmp_17_fu_137_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
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
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv32_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(exitcond1_fu_79_p2.read(), ap_const_lv1_1))) {
            ap_return_preg = value_reg_52.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_64 = i_2_reg_152.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_64 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        value_reg_52 = value_2_fu_143_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        value_reg_52 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_2_reg_152 = i_2_fu_85_p2.read();
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

void convolution::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_79_p2.read(), ap_const_lv1_1)))) {
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
         esl_seteq<1,1,1>(exitcond1_fu_79_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void convolution::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_79_p2.read(), ap_const_lv1_1))) {
        ap_return = value_reg_52.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void convolution::thread_block_r_address0() {
    block_r_address0 =  (sc_lv<4>) (tmp_14_fu_119_p1.read());
}

void convolution::thread_block_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        block_r_ce0 = ap_const_logic_1;
    } else {
        block_r_ce0 = ap_const_logic_0;
    }
}

void convolution::thread_exitcond1_fu_79_p2() {
    exitcond1_fu_79_p2 = (!i_reg_64.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_64.read() == ap_const_lv2_3);
}

void convolution::thread_i_2_fu_85_p2() {
    i_2_fu_85_p2 = (!i_reg_64.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_reg_64.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void convolution::thread_i_cast3_fu_75_p1() {
    i_cast3_fu_75_p1 = esl_zext<5,2>(i_reg_64.read());
}

void convolution::thread_operatr_address0() {
    operatr_address0 =  (sc_lv<4>) (tmp_14_fu_119_p1.read());
}

void convolution::thread_operatr_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        operatr_ce0 = ap_const_logic_1;
    } else {
        operatr_ce0 = ap_const_logic_0;
    }
}

void convolution::thread_p_shl_cast_fu_99_p1() {
    p_shl_cast_fu_99_p1 = esl_zext<5,4>(p_shl_fu_91_p3.read());
}

void convolution::thread_p_shl_fu_91_p3() {
    p_shl_fu_91_p3 = esl_concat<2,2>(i_reg_64.read(), ap_const_lv2_0);
}

void convolution::thread_tmp_14_fu_119_p1() {
    tmp_14_fu_119_p1 = esl_zext<64,32>(tmp_cast_fu_115_p1.read());
}

void convolution::thread_tmp_16_fu_131_p2() {
    tmp_16_fu_131_p2 = (!tmp_1_fu_125_p2.read().is_01() || !operatr_q0.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_1_fu_125_p2.read()) - sc_biguint<32>(operatr_q0.read()));
}

void convolution::thread_tmp_17_fu_137_p0() {
    tmp_17_fu_137_p0 = block_r_q0.read();
}

void convolution::thread_tmp_17_fu_137_p2() {
    tmp_17_fu_137_p2 = (!tmp_17_fu_137_p0.read().is_01() || !tmp_16_fu_131_p2.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_fu_137_p0.read()) * sc_bigint<32>(tmp_16_fu_131_p2.read());
}

void convolution::thread_tmp_1_fu_125_p2() {
    tmp_1_fu_125_p2 = (!ap_const_lv32_2.is_01())? sc_lv<32>(): operatr_q0.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void convolution::thread_tmp_cast_fu_115_p1() {
    tmp_cast_fu_115_p1 = esl_sext<32,5>(tmp_s_fu_109_p2.read());
}

void convolution::thread_tmp_fu_103_p2() {
    tmp_fu_103_p2 = (!p_shl_cast_fu_99_p1.read().is_01() || !i_cast3_fu_75_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(p_shl_cast_fu_99_p1.read()) - sc_biguint<5>(i_cast3_fu_75_p1.read()));
}

void convolution::thread_tmp_s_fu_109_p2() {
    tmp_s_fu_109_p2 = (!ap_const_lv5_1.is_01() || !tmp_fu_103_p2.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_1) + sc_biguint<5>(tmp_fu_103_p2.read()));
}

void convolution::thread_value_2_fu_143_p2() {
    value_2_fu_143_p2 = (!tmp_17_fu_137_p2.read().is_01() || !value_reg_52.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_17_fu_137_p2.read()) + sc_biguint<32>(value_reg_52.read()));
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_79_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
