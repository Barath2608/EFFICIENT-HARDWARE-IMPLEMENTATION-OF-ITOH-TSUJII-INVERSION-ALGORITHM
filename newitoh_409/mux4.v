`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:36 12/12/2024 
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
`ifndef __MUX4_V__
`define __MUX4_V__
module mux4(i0, i1, i2, i3, sel, out);

input wire [408:0] i0, i1, i2, i3;
input wire [1:0] sel;
output wire [408:0] out;

assign out = (sel == 3'd0) ? i0 
		 : (sel == 3'd1) ? i1
		 : (sel == 3'd2) ? i2
		 : i3;

endmodule
`endif


