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
	 
	// Clock divider
	// tBase[0] == 50MHz
	// tBase[1] == 25MHz
	// tBase[2] == 12.5MHz
	reg [25:0] tBase;
	always@(posedge CLOCK_50) tBase <= tBase + 1'b1;

	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	assign HEX4 = 7'b1111111;
	assign HEX5 = 7'b1111111;
		
	wire rst;
	avoidMeta avoidMeta_rst(.clk(tBase[0]), .in(KEY[0]), .out(rst));
	
	wire k1,k2,sw0,sw1,sw2,sw3, key1, key2;
	avoidMeta avoidMeta_key1(.clk(tBase[0]), .in(KEY[1]), .out(key1));
	avoidMeta avoidMeta_key2(.clk(tBase[0]), .in(KEY[2]), .out(key2));
	
	assign sw2 = SW[2];
	assign sw3 = SW[3];
	userInput key_1(.clk(tBase[24]), .reset(rst), .inputSig(~key1), .actualIn(k1));
	userInput key_2(.clk(tBase[24]), .reset(rst), .inputSig(~key2), .actualIn(k2));
	userInput switch0(.clk(tBase[24]), .reset(rst), .inputSig(SW[0]), .actualIn(sw0));
	userInput switch1(.clk(tBase[24]), .reset(rst), .inputSig(SW[1]), .actualIn(sw1));
	
	wire arrivalGate, departureGate;
	wire [3:0] waterDiff;
	pound myPound(.clk(tBase[24]), .rst(rst), .waterDiff(waterDiff), .arrivalGate(arrivalGate), .departureGate(departureGate), .raise(k1), .lower(k2), .arrivalControl(sw2), .departureControl(sw3));
	HEXDisplay myDisplay(.rst(rst), .HEXout1(HEX1), .HEXout0(HEX0), .waterDiff(waterDiff));
	
	gondola arrival (.clk(tBase[24]), .rst(rst), .arrived(LEDR[0]), .signal(sw0), .gate(arrivalGate));
	gondola departure (.clk(tBase[24]), .rst(rst), .arrived(LEDR[1]), .signal(sw1), .gate(departureGate));

	assign LEDR[2] = ~arrivalGate;
	assign LEDR[3] = ~departureGate;
	assign LEDR[9] = sw0;
	assign LEDR[8] = sw1;
		
endmodule