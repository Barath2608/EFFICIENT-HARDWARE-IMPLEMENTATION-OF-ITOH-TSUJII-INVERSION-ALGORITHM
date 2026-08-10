`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:59 03/13/2025 
// Design Name: 
// Module Name:    mux4 
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
* File Name     : mux4.v
* Module Name   : 4:1 input multiplexer
* Author        : Chester Rebeiro
* Institute     : Indian Institute of Technology, Madras
* Creation Time : Wed Apr 11 14:44:58 2018

* Comment       : Automatically generated from mux4.py
********************************************************/
`ifndef __MUX4_V__
`define __MUX4_V__
module mux4(i0, i1, i2, i3, sel, out);

input wire [192:0] i0, i1, i2, i3;
input wire [1:0] sel;
output wire [192:0] out;

assign out = (sel == 3'd0) ? i0 
		 : (sel == 3'd1) ? i1
		 : (sel == 3'd2) ? i2
		 : i3;

endmodule
`endif

