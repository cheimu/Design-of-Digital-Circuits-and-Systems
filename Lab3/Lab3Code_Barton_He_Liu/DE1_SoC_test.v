/* 
	This is a clean project base you can use to build your design on.
	All the pins have been set up correctly. 
*/

module DE1_SoC(CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
	input  CLOCK_50; // 50MHz clock.
	input  [3:0] KEY; // True when not pressed, False when pressed
	input  [9:0] SW;
	output  [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output  [9:0] LEDR;
	
	wire [3:0] s1, s2;
	wire [2:0] inSignal1, inSignal2, outSignal1, outSignal2;
	
	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	
	assign inSignal1[0] = SW[8] | outSignal2[0];
	assign inSignal1[1] = outSignal2[1];
	assign inSignal1[2] = outSignal2[2];
		
	assign inSignal2[0] = SW[3] | outSignal1[0];
	assign inSignal2[1] = outSignal1[1];
	assign inSignal2[2] = outSignal1[2];
	
	
	buffer1 b1(.clk(CLOCK_50), .rst(SW[9]), .inSignal(inSignal1), .outSignal(outSignal1), .state(s1));
	buffer2 b2(.clk(CLOCK_50), .rst(SW[9]), .inSignal(inSignal2), .outSignal(outSignal2), .state(s2));
	display d1(.state(s1), .HEXout1(HEX4), .HEXout2(HEX5), .LED(LEDR[8]));
	display d2(.state(s2), .HEXout1(HEX0), .HEXout2(HEX1), .LED(LEDR[3]));
endmodule
