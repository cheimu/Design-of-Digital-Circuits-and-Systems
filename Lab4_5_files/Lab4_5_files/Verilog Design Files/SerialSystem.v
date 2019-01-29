
module SerialSystem(
	rst,
	clk,
	send_parallel,
	transmit_enable,
	load,
	serialIn,
	serialOut,
	char_received,
	char_sent,
	receive_parallel
);

	input rst;
	input clk;
	input [7:0] send_parallel;
	input transmit_enable;
	input load;
	input serialIn;
	output serialOut;
	output char_received;
	output char_sent;
	output [7:0] receive_parallel;



	serial_in_system s_in(.char_received(char_received), .parallel_data(receive_parallel), .rst(rst), .clk(clk), .serialIn(serialIn));
	serial_out_system s_out(.char_sent(char_sent), .serialOut(serialOut), .parallel_data(send_parallel), .rst(rst), .clk(clk), .transmit_enable(transmit_enable), .load(load));
	



endmodule