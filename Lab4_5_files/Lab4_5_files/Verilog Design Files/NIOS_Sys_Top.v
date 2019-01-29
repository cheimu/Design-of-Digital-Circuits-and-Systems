
module NIOS_Sys_Top (
	CLOCK_50, // 50MHz clock.
	SERIAL_IN_PORT,
	KEY, // True when not pressed, False when pressed
	SW,
	SERIAL_OUT_PORT,
	LEDR
);

	input CLOCK_50; // 50MHz clock.
	input	SERIAL_IN_PORT;
	output SERIAL_OUT_PORT;
	input [3:0] KEY; // True when not pressed, False when pressed
	input [9:0] SW;
	output[9:0] LEDR;

	assign LEDR[9:8] = 2'b11;

	
	
	wire transmit_enable, load, peripheral_reset, char_sent, char_received;
	wire [7:0] send_parallel;
	wire [7:0] receive_parallel;
	wire serialIn, serialOut;
	
	
	wire clk_out;
	wire rst;
	assign rst = ~KEY[0];
	
	
	//reg [25:0] tBase;
	//always@(posedge CLOCK_50) tBase <= tBase + 1'b1;
	
	
	
	clk_16x best_clock_ever(.rst(rst), .clk_in(CLOCK_50), .clk_out(clk_out));
	
	assign serialIn = SERIAL_IN_PORT;
	assign SERIAL_OUT_PORT = serialOut;
	
	SerialSystem serialInterface(
	.rst(rst),
	.clk(clk_out),
	.send_parallel(send_parallel),
	.transmit_enable(transmit_enable),
	.load(load),
	.serialIn(serialIn),
	.serialOut(serialOut),
	.char_received(char_received),
	.char_sent(char_sent),
	.receive_parallel(receive_parallel)
);
	
	
	
	
	first_nios2_system u0 (
		.char_received_external_connection_export    (char_received),   
		.char_sent_external_connection_export        (char_sent),       
		.clk_clk                                     (CLOCK_50),                  
		.led_pio_external_connection_export          (LEDR[7:0]),        
		.parallel_in_external_connection_export      (receive_parallel),   
		.parallel_load_external_connection_export    (load),    
		.parallel_out_external_connection_export     (send_parallel),     
		.peripheral_reset_external_connection_export (peripheral_reset), 
		.reset_reset_n                               (KEY[0]),         
		.switches_external_connection_export         (SW[7:0]),        
		.transmit_enable_external_connection_export  (transmit_enable) 
	);

	

endmodule