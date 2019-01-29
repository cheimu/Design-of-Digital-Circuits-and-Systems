module PBuffer_to_SReg(clk, rst, transmit_enable, shift, loadBuff,loadReg, dataOut, buffer_in);
	input clk, rst, shift, loadBuff, loadReg, transmit_enable;
	input [7:0] buffer_in;
	output dataOut;
	
	reg [10:0] ns_shiftReg, ps_shiftReg;
	reg [10:0] ns_buffer, ps_buffer;

	// generate parity bit
	wire parityBit;
	assign parityBit = buffer_in[0] ^ buffer_in[1] ^ buffer_in[2] ^ buffer_in[3] ^ buffer_in[4] ^ buffer_in[5] ^ buffer_in[6] ^ buffer_in[7];
	
	assign dataOut = ps_shiftReg[0];
	
	always @(*) begin
		
		// logic for shiftReg
		if(shift) begin
			ns_shiftReg[9:0] = ps_shiftReg[10:1];
			ns_shiftReg[10] = 1'b1;
		end else if(loadReg) begin
			ns_shiftReg = ps_buffer;
		end else begin
			ns_shiftReg = ps_shiftReg;
		end
		
		// logic for buffer
		if(loadBuff) begin
			ns_buffer[0] = 1'b0;
			ns_buffer[8:1] = buffer_in;
			ns_buffer[9] = parityBit;
			ns_buffer[10] = 1'b1;
		end else begin
			ns_buffer = ps_buffer;
		end
		
		
		
		
	end
	
	always @(posedge clk or  posedge rst)  begin
		if (rst) begin
			ps_shiftReg <= 11'b11111111111;
			ps_buffer <= 11'b11111111111;
		end else begin
			ps_shiftReg <= ns_shiftReg;
			ps_buffer <= ns_buffer;
		end

	end

endmodule


/*
module PBuffer_to_SReg(rst, transmit_enable, shift, load, dataOut, buffer_in);
	input rst, shift, load, transmit_enable;
	input [7:0] buffer_in;
	output dataOut;
	
	reg [10:0] ns_shift_shiftReg,ns_load_shiftReg,ns_transmit_shiftReg, ps_shiftReg;
	reg [10:0] ns_load_buffer,ns_shift_buffer, ns_transmit_buffer, ps_buffer;
	wire parityBit;
	
	// generate parity bit
	assign parityBit = buffer_in[0] ^ buffer_in[1] ^ buffer_in[2] ^ buffer_in[3] ^ buffer_in[4] ^ buffer_in[5] ^ buffer_in[6] ^ buffer_in[7];
	
	assign dataOut = ps_shiftReg[0];
	
	always @(*) begin
		
		ns_load_buffer[0] = 0;
		ns_load_buffer[9] = parityBit;
		ns_load_buffer[10] = 1;
		ns_load_buffer[8:1] = buffer_in[7:0];
	   ns_shift_buffer = ps_buffer;
		ns_transmit_buffer = ps_buffer;
		
		ns_load_shiftReg = ps_shiftReg;
		ns_shift_shiftReg[9:0] = ps_shiftReg[10:1];
	   ns_shift_shiftReg[10] = 1;	
		ns_transmit_shiftReg = ps_buffer;
		
	end
	
	always @(posedge transmit_enable or posedge shift or posedge load or posedge rst)  begin
		if (rst) begin
			ps_shiftReg <= 11'b11111111111;
			ps_buffer <= 11'b11111111111;
		end else if(shift)begin //is shift
			ps_shiftReg <= ns_shift_shiftReg;
			ps_buffer <= ns_shift_buffer;
		end else if(transmit_enable) begin //is transmit_enable
			ps_shiftReg <= ns_transmit_shiftReg;
			ps_buffer <= ns_transmit_buffer;
		end else if(load) begin
			ps_shiftReg <= ns_load_shiftReg;
			ps_buffer <= ns_load_buffer;
		end

	end

endmodule
*/

