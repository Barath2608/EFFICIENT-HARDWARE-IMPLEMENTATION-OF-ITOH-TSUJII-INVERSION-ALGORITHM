`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:39 12/10/2024 
// Design Name: 
// Module Name:    multiplier 
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

`ifndef __MUL_V__
`define __MUL_V__
`include "ks193.v"
`include "mod.v"

module multiplier(a, b, d);
input wire [192:0] a;
input wire [192:0] b;
output wire [192:0] d;
wire [384:0] mout;

ks193 ks(a, b, mout);
mod   mod1(mout, d);

endmodule
`endif




