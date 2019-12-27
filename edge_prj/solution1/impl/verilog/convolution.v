// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module convolution (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        operatr_address0,
        operatr_ce0,
        operatr_q0,
        block_r_address0,
        block_r_ce0,
        block_r_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] operatr_address0;
output   operatr_ce0;
input  [31:0] operatr_q0;
output  [3:0] block_r_address0;
output   block_r_ce0;
input  [31:0] block_r_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg operatr_ce0;
reg block_r_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] i_2_fu_100_p2;
reg   [1:0] i_2_reg_182;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_fu_118_p2;
reg   [4:0] tmp_reg_187;
wire   [0:0] exitcond1_fu_94_p2;
wire   [1:0] j_2_fu_134_p2;
reg   [1:0] j_2_reg_195;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_128_p2;
reg   [1:0] i_reg_60;
reg   [1:0] j_reg_71;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_14_fu_149_p1;
reg   [31:0] value_fu_32;
wire   [31:0] value_2_fu_161_p2;
wire   [3:0] p_shl_fu_106_p3;
wire   [4:0] p_shl_cast_fu_114_p1;
wire   [4:0] i_cast3_fu_90_p1;
wire   [4:0] j_cast1_fu_124_p1;
wire   [4:0] tmp_s_fu_140_p2;
wire  signed [31:0] tmp_cast_fu_145_p1;
wire  signed [31:0] tmp_15_fu_155_p0;
wire  signed [31:0] tmp_15_fu_155_p1;
wire   [31:0] tmp_15_fu_155_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_60 <= i_2_reg_182;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_60 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_71 <= j_2_reg_195;
    end else if (((exitcond1_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_71 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        value_fu_32 <= value_2_fu_161_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        value_fu_32 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_2_reg_182 <= i_2_fu_100_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_2_reg_195 <= j_2_fu_134_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_187 <= tmp_fu_118_p2;
    end
end

always @ (*) begin
    if ((((exitcond1_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        block_r_ce0 = 1'b1;
    end else begin
        block_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        operatr_ce0 = 1'b1;
    end else begin
        operatr_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return = value_fu_32;

assign block_r_address0 = tmp_14_fu_149_p1;

assign exitcond1_fu_94_p2 = ((i_reg_60 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_128_p2 = ((j_reg_71 == 2'd3) ? 1'b1 : 1'b0);

assign i_2_fu_100_p2 = (i_reg_60 + 2'd1);

assign i_cast3_fu_90_p1 = i_reg_60;

assign j_2_fu_134_p2 = (j_reg_71 + 2'd1);

assign j_cast1_fu_124_p1 = j_reg_71;

assign operatr_address0 = tmp_14_fu_149_p1;

assign p_shl_cast_fu_114_p1 = p_shl_fu_106_p3;

assign p_shl_fu_106_p3 = {{i_reg_60}, {2'd0}};

assign tmp_14_fu_149_p1 = $unsigned(tmp_cast_fu_145_p1);

assign tmp_15_fu_155_p0 = operatr_q0;

assign tmp_15_fu_155_p1 = block_r_q0;

assign tmp_15_fu_155_p2 = ($signed(tmp_15_fu_155_p0) * $signed(tmp_15_fu_155_p1));

assign tmp_cast_fu_145_p1 = $signed(tmp_s_fu_140_p2);

assign tmp_fu_118_p2 = (p_shl_cast_fu_114_p1 - i_cast3_fu_90_p1);

assign tmp_s_fu_140_p2 = (tmp_reg_187 + j_cast1_fu_124_p1);

assign value_2_fu_161_p2 = (tmp_15_fu_155_p2 + value_fu_32);

endmodule //convolution
