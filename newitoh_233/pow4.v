`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:25 03/13/2025 
// Design Name: 
// Module Name:    pow4 
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
* File Name     : hdl/pow4.v
* Module Name   : Squarer
* Author        : Chester Rebeiro
* Institute     : Indian Institute of Technology, Madras
* Creation Time : 

* Comment       : Automatically generated from sqgen_verilog.c
********************************************************/
`ifndef __POW_2P2__
`define __POW_2P2__
module pow4(a, d);

input wire [192:0] a;
output wire [192:0] d;

assign d[0] = a[0];
assign d[1] = a[145] ^ a[93] ^ a[182];
assign d[2] = a[97] ^ a[186];
assign d[3] = a[49] ^ a[138] ^ a[190];
assign d[4] = a[1];
assign d[5] = a[146] ^ a[94] ^ a[183];
assign d[6] = a[98] ^ a[187];
assign d[7] = a[50] ^ a[139] ^ a[191];
assign d[8] = a[2];
assign d[9] = a[147] ^ a[95] ^ a[184];
assign d[10] = a[99] ^ a[188];
assign d[11] = a[51] ^ a[140] ^ a[192];
assign d[12] = a[3];
assign d[13] = a[148] ^ a[96] ^ a[185];
assign d[14] = a[100] ^ a[189];
assign d[15] = a[52] ^ a[141];
assign d[16] = a[4] ^ a[145] ^ a[93] ^ a[182];
assign d[17] = a[149];
assign d[18] = a[101] ^ a[49] ^ a[138];
assign d[19] = a[53] ^ a[142];
assign d[20] = a[5] ^ a[146] ^ a[94] ^ a[183];
assign d[21] = a[150];
assign d[22] = a[102] ^ a[50] ^ a[139];
assign d[23] = a[54] ^ a[143];
assign d[24] = a[6] ^ a[147] ^ a[95] ^ a[184];
assign d[25] = a[151];
assign d[26] = a[103] ^ a[51] ^ a[140];
assign d[27] = a[55] ^ a[144];
assign d[28] = a[7] ^ a[148] ^ a[96] ^ a[185];
assign d[29] = a[152];
assign d[30] = a[104] ^ a[52] ^ a[141];
assign d[31] = a[56] ^ a[145];
assign d[32] = a[8] ^ a[97] ^ a[186] ^ a[149];
assign d[33] = a[153];
assign d[34] = a[105] ^ a[53] ^ a[142];
assign d[35] = a[57] ^ a[146];
assign d[36] = a[9] ^ a[98] ^ a[187] ^ a[150];
assign d[37] = a[154];
assign d[38] = a[106] ^ a[54] ^ a[143];
assign d[39] = a[58] ^ a[147];
assign d[40] = a[10] ^ a[99] ^ a[188] ^ a[151];
assign d[41] = a[155];
assign d[42] = a[107] ^ a[55] ^ a[144];
assign d[43] = a[59] ^ a[148];
assign d[44] = a[11] ^ a[100] ^ a[189] ^ a[152];
assign d[45] = a[156];
assign d[46] = a[108] ^ a[56] ^ a[145];
assign d[47] = a[60] ^ a[149];
assign d[48] = a[12] ^ a[101] ^ a[190] ^ a[153];
assign d[49] = a[157];
assign d[50] = a[109] ^ a[57] ^ a[146];
assign d[51] = a[61] ^ a[150];
assign d[52] = a[13] ^ a[102] ^ a[191] ^ a[154];
assign d[53] = a[158];
assign d[54] = a[110] ^ a[58] ^ a[147];
assign d[55] = a[62] ^ a[151];
assign d[56] = a[14] ^ a[103] ^ a[192] ^ a[155];
assign d[57] = a[159];
assign d[58] = a[111] ^ a[59] ^ a[148];
assign d[59] = a[63] ^ a[152];
assign d[60] = a[15] ^ a[104] ^ a[156];
assign d[61] = a[160];
assign d[62] = a[112] ^ a[60] ^ a[149];
assign d[63] = a[64] ^ a[153];
assign d[64] = a[16] ^ a[105] ^ a[157];
assign d[65] = a[161];
assign d[66] = a[113] ^ a[61] ^ a[150];
assign d[67] = a[65] ^ a[154];
assign d[68] = a[17] ^ a[106] ^ a[158];
assign d[69] = a[162];
assign d[70] = a[114] ^ a[62] ^ a[151];
assign d[71] = a[66] ^ a[155];
assign d[72] = a[18] ^ a[107] ^ a[159];
assign d[73] = a[163];
assign d[74] = a[115] ^ a[63] ^ a[152];
assign d[75] = a[67] ^ a[156];
assign d[76] = a[19] ^ a[108] ^ a[160];
assign d[77] = a[164];
assign d[78] = a[116] ^ a[64] ^ a[153];
assign d[79] = a[68] ^ a[157];
assign d[80] = a[20] ^ a[109] ^ a[161];
assign d[81] = a[165];
assign d[82] = a[117] ^ a[65] ^ a[154];
assign d[83] = a[69] ^ a[158];
assign d[84] = a[21] ^ a[110] ^ a[162];
assign d[85] = a[166];
assign d[86] = a[118] ^ a[66] ^ a[155];
assign d[87] = a[70] ^ a[159];
assign d[88] = a[22] ^ a[111] ^ a[163];
assign d[89] = a[167];
assign d[90] = a[119] ^ a[67] ^ a[156];
assign d[91] = a[71] ^ a[160];
assign d[92] = a[23] ^ a[112] ^ a[164];
assign d[93] = a[168];
assign d[94] = a[120] ^ a[68] ^ a[157];
assign d[95] = a[72] ^ a[161];
assign d[96] = a[24] ^ a[113] ^ a[165];
assign d[97] = a[169];
assign d[98] = a[121] ^ a[69] ^ a[158];
assign d[99] = a[73] ^ a[162];
assign d[100] = a[25] ^ a[114] ^ a[166];
assign d[101] = a[170];
assign d[102] = a[122] ^ a[70] ^ a[159];
assign d[103] = a[74] ^ a[163];
assign d[104] = a[26] ^ a[115] ^ a[167];
assign d[105] = a[171];
assign d[106] = a[123] ^ a[71] ^ a[160];
assign d[107] = a[75] ^ a[164];
assign d[108] = a[27] ^ a[116] ^ a[168];
assign d[109] = a[172];
assign d[110] = a[124] ^ a[72] ^ a[161];
assign d[111] = a[76] ^ a[165];
assign d[112] = a[28] ^ a[117] ^ a[169];
assign d[113] = a[173];
assign d[114] = a[125] ^ a[73] ^ a[162];
assign d[115] = a[77] ^ a[166];
assign d[116] = a[29] ^ a[118] ^ a[170];
assign d[117] = a[174];
assign d[118] = a[126] ^ a[74] ^ a[163];
assign d[119] = a[78] ^ a[167];
assign d[120] = a[30] ^ a[119] ^ a[171];
assign d[121] = a[175];
assign d[122] = a[127] ^ a[75] ^ a[164];
assign d[123] = a[79] ^ a[168];
assign d[124] = a[31] ^ a[120] ^ a[172];
assign d[125] = a[176];
assign d[126] = a[128] ^ a[76] ^ a[165];
assign d[127] = a[80] ^ a[169];
assign d[128] = a[32] ^ a[121] ^ a[173];
assign d[129] = a[177];
assign d[130] = a[129] ^ a[77] ^ a[166];
assign d[131] = a[81] ^ a[170];
assign d[132] = a[33] ^ a[122] ^ a[174];
assign d[133] = a[178];
assign d[134] = a[130] ^ a[78] ^ a[167];
assign d[135] = a[82] ^ a[171];
assign d[136] = a[34] ^ a[123] ^ a[175];
assign d[137] = a[179];
assign d[138] = a[131] ^ a[79] ^ a[168];
assign d[139] = a[83] ^ a[172];
assign d[140] = a[35] ^ a[124] ^ a[176];
assign d[141] = a[180];
assign d[142] = a[132] ^ a[80] ^ a[169];
assign d[143] = a[84] ^ a[173];
assign d[144] = a[36] ^ a[125] ^ a[177];
assign d[145] = a[181];
assign d[146] = a[133] ^ a[81] ^ a[170];
assign d[147] = a[85] ^ a[174];
assign d[148] = a[37] ^ a[126] ^ a[178];
assign d[149] = a[182];
assign d[150] = a[134] ^ a[82] ^ a[171];
assign d[151] = a[86] ^ a[175];
assign d[152] = a[38] ^ a[127] ^ a[179];
assign d[153] = a[183];
assign d[154] = a[135] ^ a[83] ^ a[172];
assign d[155] = a[87] ^ a[176];
assign d[156] = a[39] ^ a[128] ^ a[180];
assign d[157] = a[184];
assign d[158] = a[136] ^ a[84] ^ a[173];
assign d[159] = a[88] ^ a[177];
assign d[160] = a[40] ^ a[129] ^ a[181];
assign d[161] = a[185];
assign d[162] = a[137] ^ a[85] ^ a[174];
assign d[163] = a[89] ^ a[178];
assign d[164] = a[41] ^ a[130] ^ a[182];
assign d[165] = a[186];
assign d[166] = a[138] ^ a[86] ^ a[175];
assign d[167] = a[90] ^ a[179];
assign d[168] = a[42] ^ a[131] ^ a[183];
assign d[169] = a[187];
assign d[170] = a[139] ^ a[87] ^ a[176];
assign d[171] = a[91] ^ a[180];
assign d[172] = a[43] ^ a[132] ^ a[184];
assign d[173] = a[188];
assign d[174] = a[140] ^ a[88] ^ a[177];
assign d[175] = a[92] ^ a[181];
assign d[176] = a[44] ^ a[133] ^ a[185];
assign d[177] = a[189];
assign d[178] = a[141] ^ a[89] ^ a[178];
assign d[179] = a[93] ^ a[182];
assign d[180] = a[45] ^ a[134] ^ a[186];
assign d[181] = a[190];
assign d[182] = a[142] ^ a[90] ^ a[179];
assign d[183] = a[94] ^ a[183];
assign d[184] = a[46] ^ a[135] ^ a[187];
assign d[185] = a[191];
assign d[186] = a[143] ^ a[91] ^ a[180];
assign d[187] = a[95] ^ a[184];
assign d[188] = a[47] ^ a[136] ^ a[188];
assign d[189] = a[192];
assign d[190] = a[144] ^ a[92] ^ a[181];
assign d[191] = a[96] ^ a[185];
assign d[192] = a[48] ^ a[137] ^ a[189];
endmodule
`endif


