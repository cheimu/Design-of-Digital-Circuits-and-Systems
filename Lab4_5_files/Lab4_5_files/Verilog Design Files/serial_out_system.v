module serial_out_system (char_sent, serialOut, parallel_data, rst, clk, transmit_enable, load);
	input rst, clk, transmit_enable, load;
	output char_sent, serialOut;
	input [7:0] parallel_data;
	wire shift;
	wire [3:0] bsc_state, bic_state;
	
	
	wire loadBuff,loadReg;
	assign loadBuff = load;
	
	bsc bs (.clk(clk), .rst(rst), .enable(transmit_enable), .bsc_state(bsc_state));
	
	bic bi (.clk(clk), .rst(rst), .bsc_state(bsc_state), .enable(transmit_enable), .bic_state(bic_state), .char_received(char_sent));
	
	SR_clock_out src (.bsc_state(bsc_state), .bic_state(bic_state), .shift(shift), .load(loadReg));
	
	PBuffer_to_SReg pts (.clk(clk), .rst(rst), .transmit_enable(transmit_enable), .shift(shift), .loadBuff(loadBuff), .loadReg(loadReg), .dataOut(serialOut), .buffer_in(parallel_data));
endmodule
