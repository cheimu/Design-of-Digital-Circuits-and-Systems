module userInput (clk, reset, inputSig, actualIn);
	input clk, inputSig, reset;
	output actualIn;
	reg ps, ns;
	assign actualIn = (~ps & inputSig);

	always @(*)		
		ns = inputSig;

	always @(posedge clk or negedge reset)
		if (!reset)
			ps <= 1'b0;
		else
			ps <= ns;
endmodule