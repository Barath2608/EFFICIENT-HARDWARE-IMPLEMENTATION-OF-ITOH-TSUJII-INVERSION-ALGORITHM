`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:33 12/10/2024 
// Design Name: 
// Module Name:    pow4blk 
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
module pow4blk (a, sel, d);
input [192:0] a;
input [4:0] sel;
output wire [192:0] d;
wire [192:0] d1;
wire [192:0] d2;
wire [192:0] d3;
wire [192:0] d4;
wire [192:0] d5;
wire [192:0] d6;
wire [192:0] d7;
wire [192:0] d8;
wire [192:0] d9;
wire [192:0] d10;
wire [192:0] d11;
wire [192:0] d12;
wire [192:0] d13;
wire [192:0] d14;
wire [192:0] d15;
wire [192:0] d16;
pow16_193 p16_1(a, d1);
pow16_193 p16_2(d1, d2);
pow16_193 p16_3(d2, d3);
pow16_193 p16_4(d3, d4);
pow16_193 p16_5(d4, d5);
pow16_193 p16_6(d5, d6);
pow16_193 p16_7(d6, d7);
pow16_193 p16_8(d7, d8);
pow16_193 p16_9(d8, d9);
pow16_193 p16_10(d9, d10);
pow16_193 p16_11(d10, d11);
pow16_193 p16_12(d11, d12);
pow16_193 p16_13(d12, d13);
pow16_193 p16_14(d13, d14);
pow16_193 p16_15(d14, d15);
pow16_193 p16_16(d15, d16);
assign d = (sel == 5'd1) ? d1
	 : (sel == 5'd2) ? d2
	 : (sel == 5'd3) ? d3
	 : (sel == 5'd4) ? d4
	 : (sel == 5'd5) ? d5
	 : (sel == 5'd6) ? d6
	 : (sel == 5'd7) ? d7
	 : (sel == 5'd8) ? d8
	 : (sel == 5'd9) ? d9
	  : (sel == 5'd10) ? d10
	  	  : (sel == 5'd11) ? d11
		    : (sel == 5'd12) ? d12
			 : (sel == 5'd13) ? d13
			 : (sel == 5'd14) ? d14
			 : (sel == 5'd15) ? d15
			 : (sel == 5'd16) ? d16
	 : d1;
endmodule





