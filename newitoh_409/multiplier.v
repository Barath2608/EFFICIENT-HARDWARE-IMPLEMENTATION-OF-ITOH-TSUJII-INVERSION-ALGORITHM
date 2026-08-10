`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:39 12/12/2024 
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
`include "ks409.v"
`include "mod.v"

module multiplier(a, b, d);
input wire [408:0] a;
input wire [408:0] b;
output wire [408:0] d;
wire [816:0] mout;

ks409 ks(a, b, mout);
mod   mod1(mout, d);

endmodule
`endif

