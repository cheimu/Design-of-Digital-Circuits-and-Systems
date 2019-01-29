module pound(clk, rst, waterDiff, arrivalGate, departureGate, raise, lower, arrivalControl, departureControl);
	input clk, rst, raise, lower;
	input arrivalControl, departureControl; //close signal = 0 open signal = 1
	output [3:0] waterDiff;
	output arrivalGate, departureGate; // current state of gate close = 1 open = 0

	reg [3:0] ps, ns;
	reg departureLock, arrivalLock; // locked = 1 unlocked = 0
	
	//gate is open when arrival gate 
	assign arrivalGate = ~(~arrivalLock & arrivalControl); 
	assign departureGate = ~(~departureLock & departureControl);
	assign waterDiff = ps;
	
	always @(*) begin
		case(ps)
			4'b0000: begin
							if (raise && arrivalGate && departureGate)
								ns = 4'b0001;
							else
								ns = 4'b0000;
							departureLock = 1;
							arrivalLock = 0;
						end
			4'b1000: begin
							if (lower && arrivalGate && departureGate)
								ns = 4'b1001;
							else
								ns = 4'b1000;
							departureLock = 0;
							arrivalLock = 1;
						end
			4'b0111: begin
							ns = 4'b1000;
							departureLock = 0;
							arrivalLock = 1;
						end
			4'b1110: begin
							ns = 4'b0000;
							departureLock = 1;
							arrivalLock = 0;
						end
			default: begin
							ns = ps + 4'b0001;
							arrivalLock = 1;
							departureLock = 1;
						end
		endcase
	end
	
	always @(posedge clk or negedge rst) begin
		if (!rst)
			ps <= 4'b0000;
		else
			ps <= ns;
	end
endmodule
	
		
	