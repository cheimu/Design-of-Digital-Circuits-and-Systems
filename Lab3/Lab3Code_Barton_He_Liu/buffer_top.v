`include "DE1_SoC_test.v"
`include "display.v"
`include "buffer1.v"
`include "buffer2.v"

module testBench;
	// connect the two modules
	wire CLOCK_50;
	wire [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5;
	wire [9:0] LEDR;
	wire [9:0] SW;
	wire [3:0] KEY;


	// declare an instance of the AND module
	DE1_SoC de1 (CLOCK_50, HEX0[6:0], HEX1[6:0], HEX2[6:0], HEX3[6:0], HEX4[6:0], HEX5[6:0], KEY[3:0], LEDR[9:0], SW[9:0]);

	// declare an instance of the testIt module
	Tester buffer_test (CLOCK_50, HEX0[6:0], HEX1[6:0], HEX2[6:0], HEX3[6:0], HEX4[6:0], HEX5[6:0], KEY[3:0], LEDR[9:0], SW[9:0]);

	// file for gtkwave
	initial
		begin
		// these two files support gtkwave and are required
			$dumpfile("buffer_top.vcd");
			$dumpvars(1,de1);
		end
	endmodule

module Tester (CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);

	output CLOCK_50;
	input [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5;
	input [9:0] LEDR;
	output [9:0] SW;
	output [3:0] KEY;

	reg clk, rst, forceFlush1, forceFlush2;
	
	assign CLOCK_50 = clk;
	assign SW[9] = rst;
	assign SW[8] = forceFlush1;
	assign SW[3] = forceFlush2;

	// Set up the clock
	parameter CLOCK_PERIOD = 100;
	initial clk = 1;
	
	always begin
		#(CLOCK_PERIOD / 2);
		clk = ~clk;
	end
	/*
	initial // Response
		begin
			$display("\t\t clk \t rst \t out \t\t Time ");
			$monitor("\t\t %b\t %b \t %b", clk, rst, out, $time );
		end
*/
	initial begin	
		rst <= 1;
		forceFlush1 <= 0;
		forceFlush2	<= 0;	@(posedge clk);
		rst <= 0;			repeat (30) begin @(posedge clk); end
		forceFlush1 <= 1;
		forceFlush2	<= 1;	repeat (30) begin @(posedge clk); end
		$finish;
	end
endmodule