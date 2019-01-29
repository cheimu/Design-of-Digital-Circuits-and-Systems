module SReg_to_PBuffer (clk, rst, shift, load, dataIn, buffer);
	input clk, rst, shift, load, dataIn;
	output [8:0] buffer;
	reg [8:0] ps_shiftReg, ns_shiftReg;
	reg [8:0] ps_buffer, ns_buffer;

	assign buffer = ps_buffer;
	
	always @(*) begin
		if(shift) begin
				ns_shiftReg[7:0] = ps_shiftReg[8:1];
				ns_shiftReg[8] = dataIn;
		end else 
				ns_shiftReg = ps_shiftReg;
		
		if(load) 
			ns_buffer = ps_shiftReg;
		else 
			ns_buffer = ps_buffer;
	
	
	end
	
	always @(posedge clk or posedge rst) begin
		if(rst) begin
			ps_shiftReg <= 0;
			ps_buffer <= 0;
		end else begin
			ps_shiftReg <= ns_shiftReg;
			ps_buffer <= ns_buffer;
		
		end
		
	end
	
endmodule


/*
module SReg_to_PBuffer (rst, shift, load, dataIn, buffer);
	input rst, shift, load, dataIn;
	output [8:0] buffer;
	reg [8:0] ps_shiftReg, ns_shift_shiftReg, ns_load_shiftReg;
	reg [8:0] ps_buffer,ns_shift_buffer,ns_load_buffer;
	
	
	assign buffer = ps_buffer;
	
	always @(*) begin
		ns_shift_shiftReg[8:1] = ps_shiftReg[7:0];
		ns_shift_shiftReg[0] = dataIn;
		ns_shift_buffer = ps_buffer;
		
		ns_load_shiftReg = ps_shiftReg;
		ns_load_buffer[8] = ps_shiftReg[0];
		ns_load_buffer[7] = ps_shiftReg[1];
		ns_load_buffer[6] = ps_shiftReg[2];
		ns_load_buffer[5] = ps_shiftReg[3];
		ns_load_buffer[4] = ps_shiftReg[4];
		ns_load_buffer[3] = ps_shiftReg[5];
		ns_load_buffer[2] = ps_shiftReg[6];
		ns_load_buffer[1] = ps_shiftReg[7];
		ns_load_buffer[0] = ps_shiftReg[8];
		
	end
	
	always @(posedge shift or posedge load or posedge rst) begin
		if(rst) begin
			ps_shiftReg <= 0;
			ps_buffer <= 0;
		end else if(shift) begin
			ps_shiftReg <= ns_shift_shiftReg;
			ps_buffer <= ns_shift_buffer;
		end else begin //is load
			ps_shiftReg <= ns_load_shiftReg;
			ps_buffer <= ns_load_buffer;
		end
	end
	
endmodule

*/


