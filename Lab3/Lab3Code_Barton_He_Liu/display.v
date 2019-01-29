module display(state, HEXout1, HEXout2, LED);
	input [3:0] state;
	output [6:0]HEXout1, HEXout2;
	reg [6:0]HEX1, HEX2;
	output reg LED;
	assign HEXout1 = ~HEX1;
	assign HEXout2 = ~HEX2;
	
	always @(*)
		case(state)
			4'b0000: begin
							HEX1 = 7'b0111111;
							HEX2 = 7'b0111000;
							LED = 0;
						end
			4'b0001:	begin
							HEX1 = 7'b0111111;
							HEX2 = 7'b1101101;
							LED = 0;
						end
			4'b0010:begin
							HEX1 = 7'b0111111;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b0011:begin
							HEX1 = 7'b0000110;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b0100:begin
							HEX1 = 7'b1011011;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b0101:begin
							HEX1 = 7'b1001111;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b0110:begin
							HEX1 = 7'b1100110;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b0111:begin
							HEX1 = 7'b1101101;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b1000:begin
							HEX1 = 7'b1111101;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b1001:begin
							HEX1 = 7'b0000111;
							HEX2 = 7'b0111001;
							LED = 0;
						end
			4'b1010:begin
							HEX1 = 7'b1111111;
							HEX2 = 7'b0111001;
							LED = 1;
						end
			4'b1011:begin
							HEX1 = 7'b1101111;
							HEX2 = 7'b0111001;
							LED = 1;
						end
			4'b1100:begin
							HEX1 = 7'b1110001;
							HEX2 = 7'b0000110;
							LED = 1;
						end
			4'b1101:begin
							HEX1 = 7'b1101101;
							HEX2 = 7'b1110001;
							LED = 0;
						end
			default: begin
							HEX1 = 7'b0000000;
							HEX2 = 7'b0000000;
							LED = 0;
						end
		endcase
endmodule