module buffer1(clk, rst, inSignal, outSignal, state);
	input clk, rst;
	input [2:0] inSignal;
	output [2:0] outSignal;
	output [3:0] state;
	wire flushIn, collectIn, standbyIn;
	reg flushOut, collectOut, standbyOut;
	reg [3:0] ps, ns;
	
	assign flushIn = inSignal[0];
	assign collectIn = inSignal[1];
	assign standbyIn = inSignal[2];
	assign outSignal[0] = flushOut;
	assign outSignal[1] = collectOut;
	assign outSignal[2] = standbyOut;
	assign state = ps;
	
	always @(*) begin
		case(ps)
			4'b0000: if (standbyIn)
							ns = 4'b0001;
						else
							ns = ps;
			4'b0001: if (collectIn)
							ns = 4'b0010;
						else
							ns = ps;
			4'b0010: begin
							ns = 4'b0011; 
							flushOut = 0;
							collectOut = 0;
							standbyOut = 0;
						end
			4'b0011: ns = 4'b0100;
			4'b0100: ns = 4'b0101;
			4'b0101: ns = 4'b0110;
			4'b0110: ns = 4'b0111;
			4'b0111: begin
							ns = 4'b1000;
							flushOut = 1;
						end
			4'b1000: begin
							ns = 4'b1001;
							flushOut = 0;
						end
			4'b1001: ns = 4'b1010;
			4'b1010: begin
							ns = 4'b1011;
							standbyOut = 1;
						end
			4'b1011: begin
							ns = 4'b1100;
							collectOut = 1;
							standbyOut = 0;
						end
			4'b1100: begin
							if (flushIn)
								ns = 4'b1101;
							else
								ns = ps;
							collectOut = 0;
						end
			4'b1101: ns = 4'b0000;
			default: ns = 4'bxxxx;
		endcase
	end

	always @(posedge clk or posedge rst)
		if(rst)
			ps <= 4'b0010;
		else
			ps <= ns;
endmodule