`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:45 12/12/2024 
// Design Name: 
// Module Name:    newitoh409 
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
module newitoh409(clk, nrst, a, d);
input wire clk;
input wire nrst;
input wire [408:0] a;
output wire [408:0] d;

wire [408:0] pin;// quad blk
wire [408:0] pout;
wire [408:0] pin1; //hex blk
wire [408:0] pout1;
wire [408:0] min1;
wire [408:0] min2;
wire [408:0] mout;
reg [2:0] pow;     // quad blk
reg [2:0] pow1;    //hex blk


reg [4:0] state;

reg [4:0] nextstate;

reg [1:0] sel1;
reg [1:0] sel2;
reg       sel3;
reg       sel4;
reg       en;
wire      a1_en;

reg [408:0] a1, a2;

reg [408:0] r1, r2,r3;

pow4blk     pow4(pin,pout); //quad power blk
multiplier  mul(min1,min2,mout);
pow16_409 	pow16(pin1,pout1);  //hex power blk       


mux4        m1(a, a1, r1, 193'bx, sel1, min1);
mux4        m2(a, r2, r1, 193'bx, sel2, min2);
mux2        m3(r1, r2, sel3, pin);
mux2        m4(r1,r3,sel4,pin1);

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
		
		r3<=pout1;
	end	
assign a1_en = (state == 5'd2) ? 1 : 0;
always @(posedge a1_en) begin
	a1 <= mout;
	a2 <= mout;
end

always @(state) begin
	case(state)
	5'd0:begin
		sel1 <= 2'd0; sel2 <= 2'd0; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	5'd1:begin
		sel1 <= 2'd0; sel2 <= 2'd2; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 2 p1:1 p2:1 *********/
	5'd2:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0;sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	5'd3:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 3 p1:2 p2:1 *********/
	5'd4:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	5'd5:begin
		sel1 <= 2'd1; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	/********** 6 p1:3 p2:3 *********/
	5'd6:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd3;
		pow1<=4'bx;
	end
	5'd7:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 7 p1:6 p2:1 *********/
	5'd8:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd6;
		pow1<=4'bx;
	end
	5'd9:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 14 p1:7 p2:7 *********/
	5'd10:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd8;
		pow1<=4'bx;
	end
	5'd11:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd4;
		pow1<=4'bx;
	end
	/********** 28 p1:14 p2:14 *********/
	5'd12:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	5'd13:begin  /*hex*/
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	5'd14:begin
		sel1 <= 2'd1; sel2 <= 2'd1; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 29 p1:28 p2:1 *********/
	5'd15:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd8;
		pow1<=4'bx;
	end
	5'd16:begin  /*hex*/
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	/********** 58 p1:29 p2:29 *********/
	5'd17:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	
	5'd18:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	5'd19:begin /*hex*/
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd0; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd1;
		pow1<=4'bx;
	end
	5'd20:begin
		sel1 <= 2'd1; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	/********** 116 p1:58 p2:58 *********/
	5'd21:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd22:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd23:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd24:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'd3;
		pow1<=4'bx;
	end
	5'd25:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	5'd26:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd27:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd28:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd29:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd30:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd31:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd32:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd6;
		pow1<=4'bx;
	end
	5'd33:begin
		sel1 <= 2'd2; sel2 <= 2'd1; sel3 <= 1'bx; sel4<=1'bx;
		en   <= 1'b1;
		pow <= 3'bx;
		pow1<=4'bx;
	end
	5'd34:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd0;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd35:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd36:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd37:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd38:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd39:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd40:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd41:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd42:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd43:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd44:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd45:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx; sel4<=1'd1;
		en   <= 1'b0;
		pow <= 3'bx;
		pow1<=4'd8;
	end
	5'd46:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd8;
		pow1<=4'bx;
	end
	5'd47:begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'd1; sel4<=1'bx;
		en   <= 1'b0;
		pow <= 3'd4;
		pow1<=4'bx;
	end	
	default: begin
		sel1 <= 2'bx; sel2 <= 2'bx; sel3 <= 1'bx;sel4<=1'bx;
		pow <= 4'bx;
		pow1<=4'bx;
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
	5'd25: nextstate <= 5'd26;
	5'd26: nextstate <= 5'd27;
	5'd27: nextstate <= 5'd28;
	5'd28: nextstate <= 5'd29;
	5'd29: nextstate <= 5'd30;
	5'd30: nextstate <= 5'd31;
	5'd31: nextstate <= 5'd32;
	5'd32: nextstate <= 5'd33;
	5'd33: nextstate <= 5'd34;
	5'd34: nextstate <= 5'd35;
	5'd35: nextstate <= 5'd36;
	5'd36: nextstate <= 5'd37;
	5'd37: nextstate <= 5'd38;
	5'd38: nextstate <= 5'd39;
	5'd39: nextstate <= 5'd40;
	5'd40: nextstate <= 5'd41;
	5'd41: nextstate <= 5'd42;
	5'd42: nextstate <= 5'd43;
	5'd43: nextstate <= 5'd44;
	5'd44: nextstate <= 5'd45;
	5'd45: nextstate <= 5'd46;
	5'd46: nextstate <= 5'd47;
	
	default: nextstate <= 5'bx;
	endcase
end



endmodule
