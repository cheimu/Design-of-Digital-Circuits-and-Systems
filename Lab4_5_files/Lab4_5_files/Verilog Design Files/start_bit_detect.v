module start_bit_detect (rst, clk, dataIn, enable, bsc_state, bic_state);
	input rst, clk, dataIn;
	input [3:0] bsc_state, bic_state;
	output reg enable;
	reg ps, ns;

	always @(*) begin
	
		case (ps) 
			0: begin
					enable = 0;
					if(!dataIn)
						ns = 1;
					else
						ns = 0;
				end
			1: begin
					enable = 1;
					if( (bsc_state == 4'b1111) && (bic_state == 4'b1010) )
						ns = 0;
					else
						ns = 1;
			
				end
		endcase
	end	
	
	always @(posedge clk or posedge rst) begin
		if (rst)
			ps = 0;
		else
			ps <= ns;
	end	
endmodule


/*

module start_bit_detect (rst, clk, dataIn, enable);
	input rst, clk, dataIn;
	output reg enable;
	reg currentBit;
	reg[7:0] ps, ns;

	always @(*) begin
		case(ps)
			8'b00000000: if(!dataIn) begin 
								 ns = 1;
							 	 enable = 1;
							 end else begin
								 ns = 0;
								 enable = 0;
							 end
			8'b10101111: begin
								 ns = 0;
								 enable = 1;
							 end			
			default: begin
							ns = ps + 8'b00000001;
							enable = 1;
						end
		endcase
	end	
	
	always @(posedge clk or posedge rst) begin
		if (rst)
			ps = 0;
		else
			ps <= ns;
	end	
endmodule
			
*/
			