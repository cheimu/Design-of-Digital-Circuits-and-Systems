module avoidMeta(clk, in, out);
	input clk, in;
	output out;
	reg in1, in2;
	assign out = in2;
	
	// DFF to avoid metastability
	always @(posedge clk)
		in1 <= in;
	always @(posedge clk)
		in2 <= in1;
endmodule