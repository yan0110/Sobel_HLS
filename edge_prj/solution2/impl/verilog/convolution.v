// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module convolution (
        ap_ready,
        p_read,
        p_read2,
        p_read3,
        p_read5,
        ap_return
);


output   ap_ready;
input  [2:0] p_read;
input  [3:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read5;
output  [31:0] ap_return;

wire  signed [31:0] tmp_15_fu_48_p0;
wire  signed [2:0] tmp_15_fu_48_p1;
wire   [31:0] tmp_15_fu_48_p2;
wire  signed [31:0] tmp_15_2_fu_60_p0;
wire   [3:0] tmp_15_2_fu_60_p1;
wire   [31:0] tmp_1_fu_54_p2;
wire   [31:0] tmp_15_2_fu_60_p2;
wire   [31:0] tmp_2_fu_72_p2;
wire   [31:0] tmp_fu_66_p2;
wire   [31:0] tmp1_fu_78_p2;
wire   [31:0] tmp_15_2_fu_60_p10;

assign ap_ready = 1'b1;

assign ap_return = (tmp_fu_66_p2 + tmp1_fu_78_p2);

assign tmp1_fu_78_p2 = (tmp_15_2_fu_60_p2 + tmp_2_fu_72_p2);

assign tmp_15_2_fu_60_p0 = p_read5;

assign tmp_15_2_fu_60_p1 = tmp_15_2_fu_60_p10;

assign tmp_15_2_fu_60_p10 = p_read2;

assign tmp_15_2_fu_60_p2 = ($signed(tmp_15_2_fu_60_p0) * $signed({{1'b0}, {tmp_15_2_fu_60_p1}}));

assign tmp_15_fu_48_p0 = p_read3;

assign tmp_15_fu_48_p1 = p_read;

assign tmp_15_fu_48_p2 = ($signed(tmp_15_fu_48_p0) * $signed(tmp_15_fu_48_p1));

assign tmp_1_fu_54_p2 = tmp_15_fu_48_p2 << 32'd1;

assign tmp_2_fu_72_p2 = tmp_15_2_fu_60_p2 << 32'd1;

assign tmp_fu_66_p2 = (tmp_1_fu_54_p2 + tmp_15_fu_48_p2);

endmodule //convolution
