module bic (clk, rst, bsc_state, enable, bic_state, char_received);
	input clk, rst, enable;
	input [3:0] bsc_state;
	output [3:0] bic_state;
	output reg char_received;
	reg [3:0] ps, ns;
	wire end_of_bit;
	
	assign bic_state = ps;
	assign end_of_bit = (bsc_state == 4'b1111);
	
	always @(*) begin
			case(ps)
				
				4'b1010: if(end_of_bit) begin
								ns = 0;
								char_received = 1;
							end else begin
								ns = ps;
								char_received = 0;
							end
					
				default: if(end_of_bit) begin
								ns = ps + 4'b0001;
								char_received = 0;
							end else begin
								ns = ps;
								char_received = 0;
							end
			
			endcase
	end

	always @(posedge clk or posedge rst) begin
		if(rst)
			ps = 0;
		else
			ps <= ns;
	
	end

endmodule