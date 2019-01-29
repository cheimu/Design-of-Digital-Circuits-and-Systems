module HEXDisplay(rst, HEXout1, HEXout0, waterDiff);
   input rst;
	input [3:0] waterDiff;
	output [6:0] HEXout1,HEXout0;
	reg [6:0] HEX1, HEX0;
	
	assign HEXout1 = ~HEX1;
	assign HEXout0 = ~HEX0;
	 
	always @(*) begin
		if (!rst) begin
			HEX1 = 7'b0000000;
			HEX0 = 7'b0000000;
		end else
			case(waterDiff)
				4'b0000: begin HEX1 = 7'b0111111; HEX0 = 7'b0111111;end //0:0
				4'b0001: begin HEX1 = 7'b0111111; HEX0 = 7'b1111101;end //1:0.6
				4'b0010: begin HEX1 = 7'b0000110; HEX0 = 7'b1001111;end //2:1.3
				4'b0011: begin HEX1 = 7'b0000110; HEX0 = 7'b1101111;end //3:1.9
				4'b0100: begin HEX1 = 7'b1011011; HEX0 = 7'b1101101;end //4:2.5
				4'b0101: begin HEX1 = 7'b1001111; HEX0 = 7'b0000110;end //5:3.1
				4'b0110: begin HEX1 = 7'b1001111; HEX0 = 7'b1111111;end //6:3.8
				4'b0111: begin HEX1 = 7'b1100110; HEX0 = 7'b1100110;end //7:4.4
				4'b1000: begin HEX1 = 7'b1101101; HEX0 = 7'b0111111;end //8:5.0
				4'b1001: begin HEX1 = 7'b1100110; HEX0 = 7'b1001111;end //9:4.3
				4'b1010: begin HEX1 = 7'b1001111; HEX0 = 7'b1111101;end //10:3.6
				4'b1011: begin HEX1 = 7'b1011011; HEX0 = 7'b1101111;end //11:2.9
				4'b1100: begin HEX1 = 7'b1011011; HEX0 = 7'b0000110;end //12:2.1
				4'b1101: begin HEX1 = 7'b0000110; HEX0 = 7'b1100110;end //13:1.4
				4'b1110: begin HEX1 = 7'b0111111; HEX0 = 7'b0000111;end //14:0.7
				default: begin HEX1 = 7'b0000000; HEX0 = 7'b0000000;end 
			endcase
	end
endmodule
	