`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:42 03/13/2025 
// Design Name: 
// Module Name:    mod 
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
* File Name     : hdl/mod.v
* Module Name   : Modulo Operation
* Author        : Chester Rebeiro
* Institute     : Indian Institute of Technology, Madras
* Creation Time : 

* Comment       : Automatically generated from modverilog.c
********************************************************/
`ifndef __MOD_V__
`define __MOD_V__
module mod(a, d);

input wire [384:0] a;
output wire [192:0] d;

assign d[0] = a[0] ^ a[193] ^ a[371];
assign d[1] = a[1] ^ a[194] ^ a[372];
assign d[2] = a[2] ^ a[195] ^ a[373];
assign d[3] = a[3] ^ a[196] ^ a[374];
assign d[4] = a[4] ^ a[197] ^ a[375];
assign d[5] = a[5] ^ a[198] ^ a[376];
assign d[6] = a[6] ^ a[199] ^ a[377];
assign d[7] = a[7] ^ a[200] ^ a[378];
assign d[8] = a[8] ^ a[201] ^ a[379];
assign d[9] = a[9] ^ a[202] ^ a[380];
assign d[10] = a[10] ^ a[203] ^ a[381];
assign d[11] = a[11] ^ a[204] ^ a[382];
assign d[12] = a[12] ^ a[205] ^ a[383];
assign d[13] = a[13] ^ a[206] ^ a[384];
assign d[14] = a[14] ^ a[207];
assign d[15] = a[15] ^ a[193] ^ a[208] ^ a[371];
assign d[16] = a[16] ^ a[194] ^ a[209] ^ a[372];
assign d[17] = a[17] ^ a[195] ^ a[210] ^ a[373];
assign d[18] = a[18] ^ a[196] ^ a[211] ^ a[374];
assign d[19] = a[19] ^ a[197] ^ a[212] ^ a[375];
assign d[20] = a[20] ^ a[198] ^ a[213] ^ a[376];
assign d[21] = a[21] ^ a[199] ^ a[214] ^ a[377];
assign d[22] = a[22] ^ a[200] ^ a[215] ^ a[378];
assign d[23] = a[23] ^ a[201] ^ a[216] ^ a[379];
assign d[24] = a[24] ^ a[202] ^ a[217] ^ a[380];
assign d[25] = a[25] ^ a[203] ^ a[218] ^ a[381];
assign d[26] = a[26] ^ a[204] ^ a[219] ^ a[382];
assign d[27] = a[27] ^ a[205] ^ a[220] ^ a[383];
assign d[28] = a[28] ^ a[206] ^ a[221] ^ a[384];
assign d[29] = a[29] ^ a[207] ^ a[222];
assign d[30] = a[30] ^ a[208] ^ a[223];
assign d[31] = a[31] ^ a[209] ^ a[224];
assign d[32] = a[32] ^ a[210] ^ a[225];
assign d[33] = a[33] ^ a[211] ^ a[226];
assign d[34] = a[34] ^ a[212] ^ a[227];
assign d[35] = a[35] ^ a[213] ^ a[228];
assign d[36] = a[36] ^ a[214] ^ a[229];
assign d[37] = a[37] ^ a[215] ^ a[230];
assign d[38] = a[38] ^ a[216] ^ a[231];
assign d[39] = a[39] ^ a[217] ^ a[232];
assign d[40] = a[40] ^ a[218] ^ a[233];
assign d[41] = a[41] ^ a[219] ^ a[234];
assign d[42] = a[42] ^ a[220] ^ a[235];
assign d[43] = a[43] ^ a[221] ^ a[236];
assign d[44] = a[44] ^ a[222] ^ a[237];
assign d[45] = a[45] ^ a[223] ^ a[238];
assign d[46] = a[46] ^ a[224] ^ a[239];
assign d[47] = a[47] ^ a[225] ^ a[240];
assign d[48] = a[48] ^ a[226] ^ a[241];
assign d[49] = a[49] ^ a[227] ^ a[242];
assign d[50] = a[50] ^ a[228] ^ a[243];
assign d[51] = a[51] ^ a[229] ^ a[244];
assign d[52] = a[52] ^ a[230] ^ a[245];
assign d[53] = a[53] ^ a[231] ^ a[246];
assign d[54] = a[54] ^ a[232] ^ a[247];
assign d[55] = a[55] ^ a[233] ^ a[248];
assign d[56] = a[56] ^ a[234] ^ a[249];
assign d[57] = a[57] ^ a[235] ^ a[250];
assign d[58] = a[58] ^ a[236] ^ a[251];
assign d[59] = a[59] ^ a[237] ^ a[252];
assign d[60] = a[60] ^ a[238] ^ a[253];
assign d[61] = a[61] ^ a[239] ^ a[254];
assign d[62] = a[62] ^ a[240] ^ a[255];
assign d[63] = a[63] ^ a[241] ^ a[256];
assign d[64] = a[64] ^ a[242] ^ a[257];
assign d[65] = a[65] ^ a[243] ^ a[258];
assign d[66] = a[66] ^ a[244] ^ a[259];
assign d[67] = a[67] ^ a[245] ^ a[260];
assign d[68] = a[68] ^ a[246] ^ a[261];
assign d[69] = a[69] ^ a[247] ^ a[262];
assign d[70] = a[70] ^ a[248] ^ a[263];
assign d[71] = a[71] ^ a[249] ^ a[264];
assign d[72] = a[72] ^ a[250] ^ a[265];
assign d[73] = a[73] ^ a[251] ^ a[266];
assign d[74] = a[74] ^ a[252] ^ a[267];
assign d[75] = a[75] ^ a[253] ^ a[268];
assign d[76] = a[76] ^ a[254] ^ a[269];
assign d[77] = a[77] ^ a[255] ^ a[270];
assign d[78] = a[78] ^ a[256] ^ a[271];
assign d[79] = a[79] ^ a[257] ^ a[272];
assign d[80] = a[80] ^ a[258] ^ a[273];
assign d[81] = a[81] ^ a[259] ^ a[274];
assign d[82] = a[82] ^ a[260] ^ a[275];
assign d[83] = a[83] ^ a[261] ^ a[276];
assign d[84] = a[84] ^ a[262] ^ a[277];
assign d[85] = a[85] ^ a[263] ^ a[278];
assign d[86] = a[86] ^ a[264] ^ a[279];
assign d[87] = a[87] ^ a[265] ^ a[280];
assign d[88] = a[88] ^ a[266] ^ a[281];
assign d[89] = a[89] ^ a[267] ^ a[282];
assign d[90] = a[90] ^ a[268] ^ a[283];
assign d[91] = a[91] ^ a[269] ^ a[284];
assign d[92] = a[92] ^ a[270] ^ a[285];
assign d[93] = a[93] ^ a[271] ^ a[286];
assign d[94] = a[94] ^ a[272] ^ a[287];
assign d[95] = a[95] ^ a[273] ^ a[288];
assign d[96] = a[96] ^ a[274] ^ a[289];
assign d[97] = a[97] ^ a[275] ^ a[290];
assign d[98] = a[98] ^ a[276] ^ a[291];
assign d[99] = a[99] ^ a[277] ^ a[292];
assign d[100] = a[100] ^ a[278] ^ a[293];
assign d[101] = a[101] ^ a[279] ^ a[294];
assign d[102] = a[102] ^ a[280] ^ a[295];
assign d[103] = a[103] ^ a[281] ^ a[296];
assign d[104] = a[104] ^ a[282] ^ a[297];
assign d[105] = a[105] ^ a[283] ^ a[298];
assign d[106] = a[106] ^ a[284] ^ a[299];
assign d[107] = a[107] ^ a[285] ^ a[300];
assign d[108] = a[108] ^ a[286] ^ a[301];
assign d[109] = a[109] ^ a[287] ^ a[302];
assign d[110] = a[110] ^ a[288] ^ a[303];
assign d[111] = a[111] ^ a[289] ^ a[304];
assign d[112] = a[112] ^ a[290] ^ a[305];
assign d[113] = a[113] ^ a[291] ^ a[306];
assign d[114] = a[114] ^ a[292] ^ a[307];
assign d[115] = a[115] ^ a[293] ^ a[308];
assign d[116] = a[116] ^ a[294] ^ a[309];
assign d[117] = a[117] ^ a[295] ^ a[310];
assign d[118] = a[118] ^ a[296] ^ a[311];
assign d[119] = a[119] ^ a[297] ^ a[312];
assign d[120] = a[120] ^ a[298] ^ a[313];
assign d[121] = a[121] ^ a[299] ^ a[314];
assign d[122] = a[122] ^ a[300] ^ a[315];
assign d[123] = a[123] ^ a[301] ^ a[316];
assign d[124] = a[124] ^ a[302] ^ a[317];
assign d[125] = a[125] ^ a[303] ^ a[318];
assign d[126] = a[126] ^ a[304] ^ a[319];
assign d[127] = a[127] ^ a[305] ^ a[320];
assign d[128] = a[128] ^ a[306] ^ a[321];
assign d[129] = a[129] ^ a[307] ^ a[322];
assign d[130] = a[130] ^ a[308] ^ a[323];
assign d[131] = a[131] ^ a[309] ^ a[324];
assign d[132] = a[132] ^ a[310] ^ a[325];
assign d[133] = a[133] ^ a[311] ^ a[326];
assign d[134] = a[134] ^ a[312] ^ a[327];
assign d[135] = a[135] ^ a[313] ^ a[328];
assign d[136] = a[136] ^ a[314] ^ a[329];
assign d[137] = a[137] ^ a[315] ^ a[330];
assign d[138] = a[138] ^ a[316] ^ a[331];
assign d[139] = a[139] ^ a[317] ^ a[332];
assign d[140] = a[140] ^ a[318] ^ a[333];
assign d[141] = a[141] ^ a[319] ^ a[334];
assign d[142] = a[142] ^ a[320] ^ a[335];
assign d[143] = a[143] ^ a[321] ^ a[336];
assign d[144] = a[144] ^ a[322] ^ a[337];
assign d[145] = a[145] ^ a[323] ^ a[338];
assign d[146] = a[146] ^ a[324] ^ a[339];
assign d[147] = a[147] ^ a[325] ^ a[340];
assign d[148] = a[148] ^ a[326] ^ a[341];
assign d[149] = a[149] ^ a[327] ^ a[342];
assign d[150] = a[150] ^ a[328] ^ a[343];
assign d[151] = a[151] ^ a[329] ^ a[344];
assign d[152] = a[152] ^ a[330] ^ a[345];
assign d[153] = a[153] ^ a[331] ^ a[346];
assign d[154] = a[154] ^ a[332] ^ a[347];
assign d[155] = a[155] ^ a[333] ^ a[348];
assign d[156] = a[156] ^ a[334] ^ a[349];
assign d[157] = a[157] ^ a[335] ^ a[350];
assign d[158] = a[158] ^ a[336] ^ a[351];
assign d[159] = a[159] ^ a[337] ^ a[352];
assign d[160] = a[160] ^ a[338] ^ a[353];
assign d[161] = a[161] ^ a[339] ^ a[354];
assign d[162] = a[162] ^ a[340] ^ a[355];
assign d[163] = a[163] ^ a[341] ^ a[356];
assign d[164] = a[164] ^ a[342] ^ a[357];
assign d[165] = a[165] ^ a[343] ^ a[358];
assign d[166] = a[166] ^ a[344] ^ a[359];
assign d[167] = a[167] ^ a[345] ^ a[360];
assign d[168] = a[168] ^ a[346] ^ a[361];
assign d[169] = a[169] ^ a[347] ^ a[362];
assign d[170] = a[170] ^ a[348] ^ a[363];
assign d[171] = a[171] ^ a[349] ^ a[364];
assign d[172] = a[172] ^ a[350] ^ a[365];
assign d[173] = a[173] ^ a[351] ^ a[366];
assign d[174] = a[174] ^ a[352] ^ a[367];
assign d[175] = a[175] ^ a[353] ^ a[368];
assign d[176] = a[176] ^ a[354] ^ a[369];
assign d[177] = a[177] ^ a[355] ^ a[370];
assign d[178] = a[178] ^ a[356] ^ a[371];
assign d[179] = a[179] ^ a[357] ^ a[372];
assign d[180] = a[180] ^ a[358] ^ a[373];
assign d[181] = a[181] ^ a[359] ^ a[374];
assign d[182] = a[182] ^ a[360] ^ a[375];
assign d[183] = a[183] ^ a[361] ^ a[376];
assign d[184] = a[184] ^ a[362] ^ a[377];
assign d[185] = a[185] ^ a[363] ^ a[378];
assign d[186] = a[186] ^ a[364] ^ a[379];
assign d[187] = a[187] ^ a[365] ^ a[380];
assign d[188] = a[188] ^ a[366] ^ a[381];
assign d[189] = a[189] ^ a[367] ^ a[382];
assign d[190] = a[190] ^ a[368] ^ a[383];
assign d[191] = a[191] ^ a[369] ^ a[384];
  assign d[192] = a[192] ^ a[370];
  // add upto 233
endmodule
`endif


