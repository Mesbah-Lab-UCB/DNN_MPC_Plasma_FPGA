// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="nn_accel,hls_ip_2019_2_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.125200,HLS_SYN_LAT=2314,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=10,HLS_SYN_FF=2898,HLS_SYN_LUT=4229,HLS_VERSION=2019_2_1}" *)

module nn_accel (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        INPUT_STREAM_data_V_address0,
        INPUT_STREAM_data_V_ce0,
        INPUT_STREAM_data_V_q0,
        INPUT_STREAM_keep_V_address0,
        INPUT_STREAM_keep_V_ce0,
        INPUT_STREAM_keep_V_we0,
        INPUT_STREAM_keep_V_d0,
        INPUT_STREAM_keep_V_q0,
        INPUT_STREAM_keep_V_address1,
        INPUT_STREAM_keep_V_ce1,
        INPUT_STREAM_keep_V_we1,
        INPUT_STREAM_keep_V_d1,
        INPUT_STREAM_keep_V_q1,
        INPUT_STREAM_strb_V_address0,
        INPUT_STREAM_strb_V_ce0,
        INPUT_STREAM_strb_V_we0,
        INPUT_STREAM_strb_V_d0,
        INPUT_STREAM_strb_V_q0,
        INPUT_STREAM_strb_V_address1,
        INPUT_STREAM_strb_V_ce1,
        INPUT_STREAM_strb_V_we1,
        INPUT_STREAM_strb_V_d1,
        INPUT_STREAM_strb_V_q1,
        INPUT_STREAM_user_V_address0,
        INPUT_STREAM_user_V_ce0,
        INPUT_STREAM_user_V_we0,
        INPUT_STREAM_user_V_d0,
        INPUT_STREAM_user_V_q0,
        INPUT_STREAM_user_V_address1,
        INPUT_STREAM_user_V_ce1,
        INPUT_STREAM_user_V_we1,
        INPUT_STREAM_user_V_d1,
        INPUT_STREAM_user_V_q1,
        INPUT_STREAM_last_V_address0,
        INPUT_STREAM_last_V_ce0,
        INPUT_STREAM_last_V_we0,
        INPUT_STREAM_last_V_d0,
        INPUT_STREAM_last_V_q0,
        INPUT_STREAM_last_V_address1,
        INPUT_STREAM_last_V_ce1,
        INPUT_STREAM_last_V_we1,
        INPUT_STREAM_last_V_d1,
        INPUT_STREAM_last_V_q1,
        INPUT_STREAM_id_V_address0,
        INPUT_STREAM_id_V_ce0,
        INPUT_STREAM_id_V_we0,
        INPUT_STREAM_id_V_d0,
        INPUT_STREAM_id_V_q0,
        INPUT_STREAM_id_V_address1,
        INPUT_STREAM_id_V_ce1,
        INPUT_STREAM_id_V_we1,
        INPUT_STREAM_id_V_d1,
        INPUT_STREAM_id_V_q1,
        INPUT_STREAM_dest_V_address0,
        INPUT_STREAM_dest_V_ce0,
        INPUT_STREAM_dest_V_we0,
        INPUT_STREAM_dest_V_d0,
        INPUT_STREAM_dest_V_q0,
        INPUT_STREAM_dest_V_address1,
        INPUT_STREAM_dest_V_ce1,
        INPUT_STREAM_dest_V_we1,
        INPUT_STREAM_dest_V_d1,
        INPUT_STREAM_dest_V_q1,
        OUTPUT_STREAM_data_V_address0,
        OUTPUT_STREAM_data_V_ce0,
        OUTPUT_STREAM_data_V_we0,
        OUTPUT_STREAM_data_V_d0,
        OUTPUT_STREAM_keep_V_address0,
        OUTPUT_STREAM_keep_V_ce0,
        OUTPUT_STREAM_keep_V_we0,
        OUTPUT_STREAM_keep_V_d0,
        OUTPUT_STREAM_strb_V_address0,
        OUTPUT_STREAM_strb_V_ce0,
        OUTPUT_STREAM_strb_V_we0,
        OUTPUT_STREAM_strb_V_d0,
        OUTPUT_STREAM_user_V_address0,
        OUTPUT_STREAM_user_V_ce0,
        OUTPUT_STREAM_user_V_we0,
        OUTPUT_STREAM_user_V_d0,
        OUTPUT_STREAM_last_V_address0,
        OUTPUT_STREAM_last_V_ce0,
        OUTPUT_STREAM_last_V_we0,
        OUTPUT_STREAM_last_V_d0,
        OUTPUT_STREAM_id_V_address0,
        OUTPUT_STREAM_id_V_ce0,
        OUTPUT_STREAM_id_V_we0,
        OUTPUT_STREAM_id_V_d0,
        OUTPUT_STREAM_dest_V_address0,
        OUTPUT_STREAM_dest_V_ce0,
        OUTPUT_STREAM_dest_V_we0,
        OUTPUT_STREAM_dest_V_d0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] INPUT_STREAM_data_V_address0;
output   INPUT_STREAM_data_V_ce0;
input  [31:0] INPUT_STREAM_data_V_q0;
output  [1:0] INPUT_STREAM_keep_V_address0;
output   INPUT_STREAM_keep_V_ce0;
output   INPUT_STREAM_keep_V_we0;
output  [3:0] INPUT_STREAM_keep_V_d0;
input  [3:0] INPUT_STREAM_keep_V_q0;
output  [1:0] INPUT_STREAM_keep_V_address1;
output   INPUT_STREAM_keep_V_ce1;
output   INPUT_STREAM_keep_V_we1;
output  [3:0] INPUT_STREAM_keep_V_d1;
input  [3:0] INPUT_STREAM_keep_V_q1;
output  [1:0] INPUT_STREAM_strb_V_address0;
output   INPUT_STREAM_strb_V_ce0;
output   INPUT_STREAM_strb_V_we0;
output  [3:0] INPUT_STREAM_strb_V_d0;
input  [3:0] INPUT_STREAM_strb_V_q0;
output  [1:0] INPUT_STREAM_strb_V_address1;
output   INPUT_STREAM_strb_V_ce1;
output   INPUT_STREAM_strb_V_we1;
output  [3:0] INPUT_STREAM_strb_V_d1;
input  [3:0] INPUT_STREAM_strb_V_q1;
output  [1:0] INPUT_STREAM_user_V_address0;
output   INPUT_STREAM_user_V_ce0;
output   INPUT_STREAM_user_V_we0;
output  [3:0] INPUT_STREAM_user_V_d0;
input  [3:0] INPUT_STREAM_user_V_q0;
output  [1:0] INPUT_STREAM_user_V_address1;
output   INPUT_STREAM_user_V_ce1;
output   INPUT_STREAM_user_V_we1;
output  [3:0] INPUT_STREAM_user_V_d1;
input  [3:0] INPUT_STREAM_user_V_q1;
output  [1:0] INPUT_STREAM_last_V_address0;
output   INPUT_STREAM_last_V_ce0;
output   INPUT_STREAM_last_V_we0;
output  [0:0] INPUT_STREAM_last_V_d0;
input  [0:0] INPUT_STREAM_last_V_q0;
output  [1:0] INPUT_STREAM_last_V_address1;
output   INPUT_STREAM_last_V_ce1;
output   INPUT_STREAM_last_V_we1;
output  [0:0] INPUT_STREAM_last_V_d1;
input  [0:0] INPUT_STREAM_last_V_q1;
output  [1:0] INPUT_STREAM_id_V_address0;
output   INPUT_STREAM_id_V_ce0;
output   INPUT_STREAM_id_V_we0;
output  [4:0] INPUT_STREAM_id_V_d0;
input  [4:0] INPUT_STREAM_id_V_q0;
output  [1:0] INPUT_STREAM_id_V_address1;
output   INPUT_STREAM_id_V_ce1;
output   INPUT_STREAM_id_V_we1;
output  [4:0] INPUT_STREAM_id_V_d1;
input  [4:0] INPUT_STREAM_id_V_q1;
output  [1:0] INPUT_STREAM_dest_V_address0;
output   INPUT_STREAM_dest_V_ce0;
output   INPUT_STREAM_dest_V_we0;
output  [4:0] INPUT_STREAM_dest_V_d0;
input  [4:0] INPUT_STREAM_dest_V_q0;
output  [1:0] INPUT_STREAM_dest_V_address1;
output   INPUT_STREAM_dest_V_ce1;
output   INPUT_STREAM_dest_V_we1;
output  [4:0] INPUT_STREAM_dest_V_d1;
input  [4:0] INPUT_STREAM_dest_V_q1;
output  [0:0] OUTPUT_STREAM_data_V_address0;
output   OUTPUT_STREAM_data_V_ce0;
output   OUTPUT_STREAM_data_V_we0;
output  [31:0] OUTPUT_STREAM_data_V_d0;
output  [0:0] OUTPUT_STREAM_keep_V_address0;
output   OUTPUT_STREAM_keep_V_ce0;
output   OUTPUT_STREAM_keep_V_we0;
output  [3:0] OUTPUT_STREAM_keep_V_d0;
output  [0:0] OUTPUT_STREAM_strb_V_address0;
output   OUTPUT_STREAM_strb_V_ce0;
output   OUTPUT_STREAM_strb_V_we0;
output  [3:0] OUTPUT_STREAM_strb_V_d0;
output  [0:0] OUTPUT_STREAM_user_V_address0;
output   OUTPUT_STREAM_user_V_ce0;
output   OUTPUT_STREAM_user_V_we0;
output  [3:0] OUTPUT_STREAM_user_V_d0;
output  [0:0] OUTPUT_STREAM_last_V_address0;
output   OUTPUT_STREAM_last_V_ce0;
output   OUTPUT_STREAM_last_V_we0;
output  [0:0] OUTPUT_STREAM_last_V_d0;
output  [0:0] OUTPUT_STREAM_id_V_address0;
output   OUTPUT_STREAM_id_V_ce0;
output   OUTPUT_STREAM_id_V_we0;
output  [4:0] OUTPUT_STREAM_id_V_d0;
output  [0:0] OUTPUT_STREAM_dest_V_address0;
output   OUTPUT_STREAM_dest_V_ce0;
output   OUTPUT_STREAM_dest_V_we0;
output  [4:0] OUTPUT_STREAM_dest_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_wrapped_NN_fu_58_ap_start;
wire    grp_wrapped_NN_fu_58_ap_done;
wire    grp_wrapped_NN_fu_58_ap_idle;
wire    grp_wrapped_NN_fu_58_ap_ready;
wire   [1:0] grp_wrapped_NN_fu_58_in_stream_data_V_address0;
wire    grp_wrapped_NN_fu_58_in_stream_data_V_ce0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_data_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_data_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_data_V_we0;
wire   [31:0] grp_wrapped_NN_fu_58_out_stream_data_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_keep_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_keep_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_keep_V_we0;
wire   [3:0] grp_wrapped_NN_fu_58_out_stream_keep_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_strb_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_strb_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_strb_V_we0;
wire   [3:0] grp_wrapped_NN_fu_58_out_stream_strb_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_user_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_user_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_user_V_we0;
wire   [3:0] grp_wrapped_NN_fu_58_out_stream_user_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_last_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_last_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_last_V_we0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_last_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_id_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_id_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_id_V_we0;
wire   [4:0] grp_wrapped_NN_fu_58_out_stream_id_V_d0;
wire   [0:0] grp_wrapped_NN_fu_58_out_stream_dest_V_address0;
wire    grp_wrapped_NN_fu_58_out_stream_dest_V_ce0;
wire    grp_wrapped_NN_fu_58_out_stream_dest_V_we0;
wire   [4:0] grp_wrapped_NN_fu_58_out_stream_dest_V_d0;
reg    grp_wrapped_NN_fu_58_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_wrapped_NN_fu_58_ap_start_reg = 1'b0;
end

wrapped_NN grp_wrapped_NN_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_wrapped_NN_fu_58_ap_start),
    .ap_done(grp_wrapped_NN_fu_58_ap_done),
    .ap_idle(grp_wrapped_NN_fu_58_ap_idle),
    .ap_ready(grp_wrapped_NN_fu_58_ap_ready),
    .in_stream_data_V_address0(grp_wrapped_NN_fu_58_in_stream_data_V_address0),
    .in_stream_data_V_ce0(grp_wrapped_NN_fu_58_in_stream_data_V_ce0),
    .in_stream_data_V_q0(INPUT_STREAM_data_V_q0),
    .out_stream_data_V_address0(grp_wrapped_NN_fu_58_out_stream_data_V_address0),
    .out_stream_data_V_ce0(grp_wrapped_NN_fu_58_out_stream_data_V_ce0),
    .out_stream_data_V_we0(grp_wrapped_NN_fu_58_out_stream_data_V_we0),
    .out_stream_data_V_d0(grp_wrapped_NN_fu_58_out_stream_data_V_d0),
    .out_stream_keep_V_address0(grp_wrapped_NN_fu_58_out_stream_keep_V_address0),
    .out_stream_keep_V_ce0(grp_wrapped_NN_fu_58_out_stream_keep_V_ce0),
    .out_stream_keep_V_we0(grp_wrapped_NN_fu_58_out_stream_keep_V_we0),
    .out_stream_keep_V_d0(grp_wrapped_NN_fu_58_out_stream_keep_V_d0),
    .out_stream_strb_V_address0(grp_wrapped_NN_fu_58_out_stream_strb_V_address0),
    .out_stream_strb_V_ce0(grp_wrapped_NN_fu_58_out_stream_strb_V_ce0),
    .out_stream_strb_V_we0(grp_wrapped_NN_fu_58_out_stream_strb_V_we0),
    .out_stream_strb_V_d0(grp_wrapped_NN_fu_58_out_stream_strb_V_d0),
    .out_stream_user_V_address0(grp_wrapped_NN_fu_58_out_stream_user_V_address0),
    .out_stream_user_V_ce0(grp_wrapped_NN_fu_58_out_stream_user_V_ce0),
    .out_stream_user_V_we0(grp_wrapped_NN_fu_58_out_stream_user_V_we0),
    .out_stream_user_V_d0(grp_wrapped_NN_fu_58_out_stream_user_V_d0),
    .out_stream_last_V_address0(grp_wrapped_NN_fu_58_out_stream_last_V_address0),
    .out_stream_last_V_ce0(grp_wrapped_NN_fu_58_out_stream_last_V_ce0),
    .out_stream_last_V_we0(grp_wrapped_NN_fu_58_out_stream_last_V_we0),
    .out_stream_last_V_d0(grp_wrapped_NN_fu_58_out_stream_last_V_d0),
    .out_stream_id_V_address0(grp_wrapped_NN_fu_58_out_stream_id_V_address0),
    .out_stream_id_V_ce0(grp_wrapped_NN_fu_58_out_stream_id_V_ce0),
    .out_stream_id_V_we0(grp_wrapped_NN_fu_58_out_stream_id_V_we0),
    .out_stream_id_V_d0(grp_wrapped_NN_fu_58_out_stream_id_V_d0),
    .out_stream_dest_V_address0(grp_wrapped_NN_fu_58_out_stream_dest_V_address0),
    .out_stream_dest_V_ce0(grp_wrapped_NN_fu_58_out_stream_dest_V_ce0),
    .out_stream_dest_V_we0(grp_wrapped_NN_fu_58_out_stream_dest_V_we0),
    .out_stream_dest_V_d0(grp_wrapped_NN_fu_58_out_stream_dest_V_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_wrapped_NN_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_wrapped_NN_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_wrapped_NN_fu_58_ap_ready == 1'b1)) begin
            grp_wrapped_NN_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_wrapped_NN_fu_58_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (grp_wrapped_NN_fu_58_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_wrapped_NN_fu_58_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign INPUT_STREAM_data_V_address0 = grp_wrapped_NN_fu_58_in_stream_data_V_address0;

assign INPUT_STREAM_data_V_ce0 = grp_wrapped_NN_fu_58_in_stream_data_V_ce0;

assign INPUT_STREAM_dest_V_address0 = 2'd0;

assign INPUT_STREAM_dest_V_address1 = 2'd0;

assign INPUT_STREAM_dest_V_ce0 = 1'b0;

assign INPUT_STREAM_dest_V_ce1 = 1'b0;

assign INPUT_STREAM_dest_V_d0 = 5'd0;

assign INPUT_STREAM_dest_V_d1 = 5'd0;

assign INPUT_STREAM_dest_V_we0 = 1'b0;

assign INPUT_STREAM_dest_V_we1 = 1'b0;

assign INPUT_STREAM_id_V_address0 = 2'd0;

assign INPUT_STREAM_id_V_address1 = 2'd0;

assign INPUT_STREAM_id_V_ce0 = 1'b0;

assign INPUT_STREAM_id_V_ce1 = 1'b0;

assign INPUT_STREAM_id_V_d0 = 5'd0;

assign INPUT_STREAM_id_V_d1 = 5'd0;

assign INPUT_STREAM_id_V_we0 = 1'b0;

assign INPUT_STREAM_id_V_we1 = 1'b0;

assign INPUT_STREAM_keep_V_address0 = 2'd0;

assign INPUT_STREAM_keep_V_address1 = 2'd0;

assign INPUT_STREAM_keep_V_ce0 = 1'b0;

assign INPUT_STREAM_keep_V_ce1 = 1'b0;

assign INPUT_STREAM_keep_V_d0 = 4'd0;

assign INPUT_STREAM_keep_V_d1 = 4'd0;

assign INPUT_STREAM_keep_V_we0 = 1'b0;

assign INPUT_STREAM_keep_V_we1 = 1'b0;

assign INPUT_STREAM_last_V_address0 = 2'd0;

assign INPUT_STREAM_last_V_address1 = 2'd0;

assign INPUT_STREAM_last_V_ce0 = 1'b0;

assign INPUT_STREAM_last_V_ce1 = 1'b0;

assign INPUT_STREAM_last_V_d0 = 1'd0;

assign INPUT_STREAM_last_V_d1 = 1'd0;

assign INPUT_STREAM_last_V_we0 = 1'b0;

assign INPUT_STREAM_last_V_we1 = 1'b0;

assign INPUT_STREAM_strb_V_address0 = 2'd0;

assign INPUT_STREAM_strb_V_address1 = 2'd0;

assign INPUT_STREAM_strb_V_ce0 = 1'b0;

assign INPUT_STREAM_strb_V_ce1 = 1'b0;

assign INPUT_STREAM_strb_V_d0 = 4'd0;

assign INPUT_STREAM_strb_V_d1 = 4'd0;

assign INPUT_STREAM_strb_V_we0 = 1'b0;

assign INPUT_STREAM_strb_V_we1 = 1'b0;

assign INPUT_STREAM_user_V_address0 = 2'd0;

assign INPUT_STREAM_user_V_address1 = 2'd0;

assign INPUT_STREAM_user_V_ce0 = 1'b0;

assign INPUT_STREAM_user_V_ce1 = 1'b0;

assign INPUT_STREAM_user_V_d0 = 4'd0;

assign INPUT_STREAM_user_V_d1 = 4'd0;

assign INPUT_STREAM_user_V_we0 = 1'b0;

assign INPUT_STREAM_user_V_we1 = 1'b0;

assign OUTPUT_STREAM_data_V_address0 = grp_wrapped_NN_fu_58_out_stream_data_V_address0;

assign OUTPUT_STREAM_data_V_ce0 = grp_wrapped_NN_fu_58_out_stream_data_V_ce0;

assign OUTPUT_STREAM_data_V_d0 = grp_wrapped_NN_fu_58_out_stream_data_V_d0;

assign OUTPUT_STREAM_data_V_we0 = grp_wrapped_NN_fu_58_out_stream_data_V_we0;

assign OUTPUT_STREAM_dest_V_address0 = grp_wrapped_NN_fu_58_out_stream_dest_V_address0;

assign OUTPUT_STREAM_dest_V_ce0 = grp_wrapped_NN_fu_58_out_stream_dest_V_ce0;

assign OUTPUT_STREAM_dest_V_d0 = grp_wrapped_NN_fu_58_out_stream_dest_V_d0;

assign OUTPUT_STREAM_dest_V_we0 = grp_wrapped_NN_fu_58_out_stream_dest_V_we0;

assign OUTPUT_STREAM_id_V_address0 = grp_wrapped_NN_fu_58_out_stream_id_V_address0;

assign OUTPUT_STREAM_id_V_ce0 = grp_wrapped_NN_fu_58_out_stream_id_V_ce0;

assign OUTPUT_STREAM_id_V_d0 = grp_wrapped_NN_fu_58_out_stream_id_V_d0;

assign OUTPUT_STREAM_id_V_we0 = grp_wrapped_NN_fu_58_out_stream_id_V_we0;

assign OUTPUT_STREAM_keep_V_address0 = grp_wrapped_NN_fu_58_out_stream_keep_V_address0;

assign OUTPUT_STREAM_keep_V_ce0 = grp_wrapped_NN_fu_58_out_stream_keep_V_ce0;

assign OUTPUT_STREAM_keep_V_d0 = grp_wrapped_NN_fu_58_out_stream_keep_V_d0;

assign OUTPUT_STREAM_keep_V_we0 = grp_wrapped_NN_fu_58_out_stream_keep_V_we0;

assign OUTPUT_STREAM_last_V_address0 = grp_wrapped_NN_fu_58_out_stream_last_V_address0;

assign OUTPUT_STREAM_last_V_ce0 = grp_wrapped_NN_fu_58_out_stream_last_V_ce0;

assign OUTPUT_STREAM_last_V_d0 = grp_wrapped_NN_fu_58_out_stream_last_V_d0;

assign OUTPUT_STREAM_last_V_we0 = grp_wrapped_NN_fu_58_out_stream_last_V_we0;

assign OUTPUT_STREAM_strb_V_address0 = grp_wrapped_NN_fu_58_out_stream_strb_V_address0;

assign OUTPUT_STREAM_strb_V_ce0 = grp_wrapped_NN_fu_58_out_stream_strb_V_ce0;

assign OUTPUT_STREAM_strb_V_d0 = grp_wrapped_NN_fu_58_out_stream_strb_V_d0;

assign OUTPUT_STREAM_strb_V_we0 = grp_wrapped_NN_fu_58_out_stream_strb_V_we0;

assign OUTPUT_STREAM_user_V_address0 = grp_wrapped_NN_fu_58_out_stream_user_V_address0;

assign OUTPUT_STREAM_user_V_ce0 = grp_wrapped_NN_fu_58_out_stream_user_V_ce0;

assign OUTPUT_STREAM_user_V_d0 = grp_wrapped_NN_fu_58_out_stream_user_V_d0;

assign OUTPUT_STREAM_user_V_we0 = grp_wrapped_NN_fu_58_out_stream_user_V_we0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_wrapped_NN_fu_58_ap_start = grp_wrapped_NN_fu_58_ap_start_reg;

endmodule //nn_accel
