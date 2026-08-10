`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:28 03/13/2025 
// Design Name: 
// Module Name:    quad_root 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/*******************************************************
* File Name     : itoh.v
* Module Name   : Control Block for Itoh Tsujii
* Author        : Chester Rebeiro
* Institute     : Indian Institute of Technology, Madras
* Creation Time : Wed Apr 11 14:44:58 2018

* Comment       : Automatically generated from control.py
********************************************************/
`ifndef __ITOH_V__
`define __ITOH_V__
`include "quadblk.v"
`include "mux4.v"
`include "mux2.v"
`include "multiplier.v"

module quad_root(clk, nrst, a, d);
input wire clk;
input wire nrst;
input wire [192:0] a;
output wire [192:0] d;

wire [192:0] pout;
wire [192:0] min1;
wire [192:0] min2;
wire [192:0] mout;
reg [2:0] pow;
reg [4:0] state;

reg [4:0] nextstate;

reg       sel1;
reg [1:0] sel2;
reg       en;
reg [192:0] r1, r2;

pow4blk     pow4(min2, pow, pout);
multiplier  mul(min1, min2, mout);

mux2        m1(a, r1,  sel1, min1);
mux4        m2(a, r2, r1, 193'bx, sel2, min2);
assign d = r1;
always @(posedge clk or negedge nrst) begin
	if (nrst == 1'b0)
		state <= 5'd0;
	else
		state <= nextstate;
end

always @(posedge clk) begin
	if (en)
		r1<= mout;
	else
		r2<= pout;
end

always @(state) begin
	case(state)
	/********** 2 p1:1 p2:1 *********/
	5'd0:begin
		sel1 <= 2'bx; sel2 <= 2'd0;		en   <= 1'b0;
		pow <= 3'd1;
	end
	5'd1:begin
		sel1 <= 2'd0; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 3 p1:2 p2:1 *********/
	5'd2:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd1;
	end
	5'd3:begin
		sel1 <= 2'd0; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 6 p1:3 p2:3 *********/
	5'd4:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd3;
	end
	5'd5:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 12 p1:6 p2:6 *********/
	5'd6:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd6;
	end
	5'd7:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 24 p1:12 p2:12 *********/
	5'd8:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd9:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd4;
	end
	5'd10:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 48 p1:24 p2:24 *********/
	5'd11:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd12:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd13:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd14:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********** 96 p1:48 p2:48 *********/
	5'd15:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd16:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd17:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd18:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd19:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd20:begin
		sel1 <= 2'bx; sel2 <= 2'd1;		en   <= 1'b0;
		pow <= 3'd8;
	end
	5'd21:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	/********* The Final Squaring *********/
	5'd22:begin
		sel1 <= 2'bx; sel2 <= 2'd2;		en   <= 1'b0;
		pow <= 3'd1;
	end
	5'd23:begin
		sel1 <= 2'd1; sel2 <= 2'd2;		en   <= 1'b1;
		pow <= 3'bx;
	end
	5'd24:begin
		sel1 <= 2'd1; sel2 <= 2'd1;		en   <= 1'b1;
		pow <= 3'bx;
	end
	5'd25:begin
		sel1 <= 2'bx; sel2 <= 2'bx;
		pow <= 4'bx;
		en <= 1'b0;
	end
	default: begin
		sel1 <= 2'bx; sel2 <= 2'bx;
		pow <= 4'bx;
		en <= 1'bx;
	end
endcase
end

always @(state) begin
	case (state)
	5'd0: nextstate <= 5'd1;
	5'd1: nextstate <= 5'd2;
	5'd2: nextstate <= 5'd3;
	5'd3: nextstate <= 5'd4;
	5'd4: nextstate <= 5'd5;
	5'd5: nextstate <= 5'd6;
	5'd6: nextstate <= 5'd7;
	5'd7: nextstate <= 5'd8;
	5'd8: nextstate <= 5'd9;
	5'd9: nextstate <= 5'd10;
	5'd10: nextstate <= 5'd11;
	5'd11: nextstate <= 5'd12;
	5'd12: nextstate <= 5'd13;
	5'd13: nextstate <= 5'd14;
	5'd14: nextstate <= 5'd15;
	5'd15: nextstate <= 5'd16;
	5'd16: nextstate <= 5'd17;
	5'd17: nextstate <= 5'd18;
	5'd18: nextstate <= 5'd19;
	5'd19: nextstate <= 5'd20;
	5'd20: nextstate <= 5'd21;
	5'd21: nextstate <= 5'd22;
	5'd22: nextstate <= 5'd23;
	5'd23: nextstate <= 5'd24;
	5'd24: nextstate <= 5'd25;
	5'd25: nextstate <= 5'd25;
	default: nextstate <= 5'bx;
	endcase
end
endmodule
`endif

