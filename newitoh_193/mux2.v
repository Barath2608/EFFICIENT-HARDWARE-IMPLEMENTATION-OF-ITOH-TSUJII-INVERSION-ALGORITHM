`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:23 12/12/2024 
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
`ifndef __MUX2_V__
`define __MUX2_V__
module mux2(i0, i1, sel, out);

input wire [192:0] i0, i1;
input wire sel;
output wire [192:0] out;

assign out = (sel == 3'd0) ? i0 : i1;

endmodule
`endif


