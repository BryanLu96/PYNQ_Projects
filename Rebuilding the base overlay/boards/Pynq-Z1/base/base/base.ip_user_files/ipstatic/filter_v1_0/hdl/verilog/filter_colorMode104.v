// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_colorMode104 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_in_data_stream_V_dout,
        img_in_data_stream_V_empty_n,
        img_in_data_stream_V_read,
        img_in_data_stream_V1_dout,
        img_in_data_stream_V1_empty_n,
        img_in_data_stream_V1_read,
        img_in_data_stream_V2_dout,
        img_in_data_stream_V2_empty_n,
        img_in_data_stream_V2_read,
        img_out_data_stream_V_din,
        img_out_data_stream_V_full_n,
        img_out_data_stream_V_write,
        img_out_data_stream_V3_din,
        img_out_data_stream_V3_full_n,
        img_out_data_stream_V3_write,
        img_out_data_stream_V4_din,
        img_out_data_stream_V4_full_n,
        img_out_data_stream_V4_write
);

parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv21_0 = 21'b000000000000000000000;
parameter    ap_const_lv21_1 = 21'b1;
parameter    ap_const_lv21_1FA3FF = 21'b111111010001111111111;
parameter    ap_const_lv16_96 = 16'b10010110;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv16_4D = 16'b1001101;
parameter    ap_const_lv14_1D = 14'b11101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] img_in_data_stream_V_dout;
input   img_in_data_stream_V_empty_n;
output   img_in_data_stream_V_read;
input  [7:0] img_in_data_stream_V1_dout;
input   img_in_data_stream_V1_empty_n;
output   img_in_data_stream_V1_read;
input  [7:0] img_in_data_stream_V2_dout;
input   img_in_data_stream_V2_empty_n;
output   img_in_data_stream_V2_read;
output  [7:0] img_out_data_stream_V_din;
input   img_out_data_stream_V_full_n;
output   img_out_data_stream_V_write;
output  [7:0] img_out_data_stream_V3_din;
input   img_out_data_stream_V3_full_n;
output   img_out_data_stream_V3_write;
output  [7:0] img_out_data_stream_V4_din;
input   img_out_data_stream_V4_full_n;
output   img_out_data_stream_V4_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_in_data_stream_V_read;
reg img_in_data_stream_V1_read;
reg img_in_data_stream_V2_read;
reg img_out_data_stream_V_write;
reg img_out_data_stream_V3_write;
reg img_out_data_stream_V4_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
wire   [0:0] exitcond_flatten_fu_133_p2;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_36;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_sig_58;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_sig_81;
reg    ap_reg_ppiten_pp0_it3;
reg    img_in_data_stream_V_blk_n;
reg    img_in_data_stream_V1_blk_n;
reg    img_in_data_stream_V2_blk_n;
reg    img_out_data_stream_V_blk_n;
reg    img_out_data_stream_V3_blk_n;
reg    img_out_data_stream_V4_blk_n;
reg   [20:0] indvar_flatten2_reg_113;
reg   [7:0] tmp_4_reg_181;
reg   [7:0] ap_reg_ppstg_tmp_4_reg_181_pp0_iter1;
reg   [7:0] tmp_5_reg_186;
reg   [7:0] tmp_reg_191;
reg   [7:0] ap_reg_ppstg_tmp_reg_191_pp0_iter1;
wire   [20:0] indvar_flatten_next_fu_127_p2;
reg   [20:0] indvar_flatten_next_reg_196;
reg   [0:0] exitcond_flatten_reg_201;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter2;
wire   [15:0] p_Val2_3_fu_142_p2;
reg   [15:0] p_Val2_3_reg_205;
reg   [7:0] gray_reg_210;
reg    ap_sig_122;
reg   [20:0] indvar_flatten2_phi_fu_117_p6;
wire   [7:0] p_Val2_3_fu_142_p0;
wire   [15:0] grp_fu_165_p3;
wire   [7:0] grp_fu_165_p0;
wire   [7:0] grp_fu_165_p1;
wire   [15:0] grp_fu_173_p3;
wire   [7:0] grp_fu_173_p0;
wire   [5:0] grp_fu_173_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
wire   [15:0] grp_fu_165_p00;
wire   [13:0] grp_fu_173_p00;
wire   [15:0] p_Val2_3_fu_142_p00;
reg    ap_sig_128;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
end

filter_mac_muladd_8ns_8ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
filter_mac_muladd_8ns_8ns_16ns_16_1_U118(
    .din0(grp_fu_165_p0),
    .din1(grp_fu_165_p1),
    .din2(grp_fu_173_p3),
    .dout(grp_fu_165_p3)
);

filter_mac_muladd_8ns_6ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
filter_mac_muladd_8ns_6ns_16ns_16_1_U119(
    .din0(grp_fu_173_p0),
    .din1(grp_fu_173_p1),
    .din2(p_Val2_3_reg_205),
    .dout(grp_fu_173_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_start;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_122)) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_122)) begin
            ap_reg_ppiten_pp0_it3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == exitcond_flatten_reg_201))) begin
        indvar_flatten2_reg_113 <= indvar_flatten_next_reg_196;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_122) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_201)))) begin
        indvar_flatten2_reg_113 <= ap_const_lv21_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter1 <= exitcond_flatten_reg_201;
        ap_reg_ppstg_tmp_4_reg_181_pp0_iter1 <= tmp_4_reg_181;
        ap_reg_ppstg_tmp_reg_191_pp0_iter1 <= tmp_reg_191;
        exitcond_flatten_reg_201 <= exitcond_flatten_fu_133_p2;
        p_Val2_3_reg_205[15 : 1] <= p_Val2_3_fu_142_p2[15 : 1];
        tmp_4_reg_181 <= img_in_data_stream_V_dout;
        tmp_5_reg_186 <= img_in_data_stream_V1_dout;
        tmp_reg_191 <= img_in_data_stream_V2_dout;
    end
end

always @ (posedge ap_clk) begin
    if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
        ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter2 <= ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter1;
        gray_reg_210 <= {{grp_fu_165_p3[ap_const_lv32_F : ap_const_lv32_8]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_next_reg_196 <= indvar_flatten_next_fu_127_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_201_pp0_iter2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(exitcond_flatten_fu_133_p2 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_36) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b0 == ap_reg_ppiten_pp0_it0) & (1'b0 == ap_reg_ppiten_pp0_it1) & (1'b0 == ap_reg_ppiten_pp0_it2))) begin
        ap_sig_pprstidle_pp0 = 1'b1;
    end else begin
        ap_sig_pprstidle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V1_blk_n = img_in_data_stream_V1_empty_n;
    end else begin
        img_in_data_stream_V1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V1_read = 1'b1;
    end else begin
        img_in_data_stream_V1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V2_blk_n = img_in_data_stream_V2_empty_n;
    end else begin
        img_in_data_stream_V2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V2_read = 1'b1;
    end else begin
        img_in_data_stream_V2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V_blk_n = img_in_data_stream_V_empty_n;
    end else begin
        img_in_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V_read = 1'b1;
    end else begin
        img_in_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V3_blk_n = img_out_data_stream_V3_full_n;
    end else begin
        img_out_data_stream_V3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V3_write = 1'b1;
    end else begin
        img_out_data_stream_V3_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V4_blk_n = img_out_data_stream_V4_full_n;
    end else begin
        img_out_data_stream_V4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V4_write = 1'b1;
    end else begin
        img_out_data_stream_V4_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V_blk_n = img_out_data_stream_V_full_n;
    end else begin
        img_out_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V_write = 1'b1;
    end else begin
        img_out_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_128) begin
        if (~(1'b0 == exitcond_flatten_reg_201)) begin
            indvar_flatten2_phi_fu_117_p6 = ap_const_lv21_0;
        end else if ((1'b0 == exitcond_flatten_reg_201)) begin
            indvar_flatten2_phi_fu_117_p6 = indvar_flatten_next_reg_196;
        end else begin
            indvar_flatten2_phi_fu_117_p6 = indvar_flatten2_reg_113;
        end
    end else begin
        indvar_flatten2_phi_fu_117_p6 = indvar_flatten2_reg_113;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_122) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if (~(1'b1 == ap_sig_pprstidle_pp0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if ((~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_81 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b1 == ap_sig_pprstidle_pp0))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

always @ (*) begin
    ap_sig_122 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_sig_128 = ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1));
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_36 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_58 = ((img_in_data_stream_V_empty_n == 1'b0) | (img_in_data_stream_V1_empty_n == 1'b0) | (img_in_data_stream_V2_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_81 = ((img_out_data_stream_V_full_n == 1'b0) | (img_out_data_stream_V3_full_n == 1'b0) | (img_out_data_stream_V4_full_n == 1'b0));
end

assign exitcond_flatten_fu_133_p2 = ((indvar_flatten2_phi_fu_117_p6 == ap_const_lv21_1FA3FF) ? 1'b1 : 1'b0);

assign grp_fu_165_p0 = grp_fu_165_p00;

assign grp_fu_165_p00 = ap_reg_ppstg_tmp_reg_191_pp0_iter1;

assign grp_fu_165_p1 = ap_const_lv16_4D;

assign grp_fu_173_p0 = grp_fu_173_p00;

assign grp_fu_173_p00 = ap_reg_ppstg_tmp_4_reg_181_pp0_iter1;

assign grp_fu_173_p1 = ap_const_lv14_1D;

assign img_out_data_stream_V3_din = gray_reg_210;

assign img_out_data_stream_V4_din = gray_reg_210;

assign img_out_data_stream_V_din = gray_reg_210;

assign indvar_flatten_next_fu_127_p2 = (indvar_flatten2_phi_fu_117_p6 + ap_const_lv21_1);

assign p_Val2_3_fu_142_p0 = p_Val2_3_fu_142_p00;

assign p_Val2_3_fu_142_p00 = tmp_5_reg_186;

assign p_Val2_3_fu_142_p2 = (p_Val2_3_fu_142_p0 * $signed('h96));

always @ (posedge ap_clk) begin
    p_Val2_3_reg_205[0] <= 1'b0;
end

endmodule //filter_colorMode104