`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:01 12/05/2024
// Design Name:   newitoh11
// Module Name:   D:/programs/newitoh11/newitoh11/newitoh11_tb.v
// Project Name:  newitoh11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: newitoh11
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module newitoh11_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg [232:0] a;

	// Outputs
	wire [232:0] d;

	// Instantiate the Unit Under Test (UUT)
	newitoh11 uut (
		.clk(clk), 
		.nrst(nrst), 
		.a(a), 
		.d(d)
	);

	 // Clock generation (50MHz clock, 20ns period)
  always begin
    #10 clk = ~clk;  // Toggle clock every 10ns
  end

  // Initial block to set up testbench stimulus
  initial begin
    // Initialize signals
    clk = 0;
    nrst = 0;         // Start with reset active
    a = 233'b0;       // Initialize input `a` to zero

    // Wait for global reset
    #20;
    nrst = 1;  // Release reset after 20ns

    // Apply test vectors to `a` and observe output `d`
    // Example test vector 1
    a = 233'hABCDE12345;   // Set some random value for input `a`
    #100;                  // Wait for 100ns
    
    // Example test vector 2
    a = 233'h9876543210;   // Set another value for input `a`
    #100;                  // Wait for 100ns

    // Example test vector 3
    a = 233'hDEADBEEF01;   // Set another random value for input `a`
    #100;                  // Wait for 100ns

    // Example test vector 4
    a = 233'hFEDCBA0987;   // Another random value for `a`
    #100;                  // Wait for 100ns

    // End simulation
    $finish;
  end

  // Monitor signals (for debugging or waveform generation)
  initial begin
    $monitor("Time = %0t, nrst = %b, a = %h, d = %h", $time, nrst, a, d);
  end

  // Optionally dump waveforms to a .vcd file for viewing in waveform viewer
  initial begin
    $dumpfile("tb_newitoh11.vcd");
    $dumpvars(0, newitoh11_tb);
  end
      
endmodule

