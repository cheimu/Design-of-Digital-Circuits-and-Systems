module SR_clock (bsc_state, bic_state, shift, load);
	input[3:0] bsc_state, bic_state;
	output shift;
	output load;
	
	assign shift = (bsc_state == 4'b0111);
	assign load = (bic_state == 4'b1001) && (bsc_state == 4'b0000); 
	
endmodule

