module SR_clock_out (bsc_state, bic_state, shift, load);
	input[3:0] bsc_state, bic_state;
	output shift;
	output load;
	
	assign shift = (bsc_state == 4'b0111);
	assign load = (bic_state == 4'b0000) && (bsc_state == 4'b0001); 
	
endmodule