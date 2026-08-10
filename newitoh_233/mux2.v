`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:23 03/13/2025 
// Design Name: 
// Module Name:    mux2 
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
* File Name     : mux2.v
* Module Name   : 2:1 input multiplexer
* Author        : Chester Rebeiro
* Institute     : Indian Institute of Technology, Madras
* Creation Time : Wed Apr 11 14:44:58 2018

* Comment       : Automatically generated from mux2.py
********************************************************/
`ifndef __MUX2_V__
`define __MUX2_V__
module mux2(i0, i1, sel, out);

input wire [192:0] i0, i1;
input wire sel;
output wire [192:0] out;

assign out = (sel == 3'd0) ? i0 : i1;

endmodule
`endif

