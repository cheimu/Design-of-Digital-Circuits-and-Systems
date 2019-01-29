module gondola(clk, rst, arrived, signal, gate);
	input clk, rst, signal, gate;
	output reg arrived;
	reg [2:0] ps, ns;
	
	always @(*)
		case (ps)
			3'b000: begin
							if (signal)
								ns = 3'b001;
							else
								ns = ps;
							arrived = 0;
						end
			3'b101: begin
						  arrived = 1;
						  ns = ps + 3'b001;
					  end
			3'b110: if (!gate) begin
							arrived = 0;
							ns = 3'b000;
					  end else begin
							arrived = 1;
							ns = ps;
					  end
			default: begin
							arrived = 0;
						   ns = ps + 3'b001;
						end
		endcase
	
	always @(posedge clk or negedge rst) begin
		if (!rst)
			ps <= 3'b000;
		else
			ps <= ns;
	end
endmodule
