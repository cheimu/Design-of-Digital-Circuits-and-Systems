module clk_16x (rst, clk_in, clk_out);
	input rst, clk_in;
	output clk_out;
	reg[8:0] counter;
	reg clk;
	assign clk_out = clk;
	
	always @(posedge clk_in or posedge rst) begin
		if (rst) begin
			counter <= 0;
			clk <= 0;
		end else if (counter == 163) begin
			clk <= ~clk;
			counter <= 0;
		end else begin
			counter <= counter + 9'b000000001;
		end
		
	end
endmodule

