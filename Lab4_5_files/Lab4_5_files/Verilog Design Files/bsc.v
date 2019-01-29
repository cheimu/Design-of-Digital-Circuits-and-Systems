module bsc (clk, rst, enable, bsc_state);
	input clk, rst, enable;
	output[3:0] bsc_state;
	reg [3:0] ps, ns;
	
	assign bsc_state = ps;
	
	always @(*) begin
	
		case(ps)
			4'b0000: begin
							if(enable)
								ns = 4'b0001;
							else 
								ns = ps;
						end
			default: begin
							ns = ps + 4'b0001;
						end
		
		
		endcase
	end
	
	always @(posedge clk or posedge rst) begin
		if (rst)
			ps <= 0;
		else
			ps <= ns;
	end
endmodule