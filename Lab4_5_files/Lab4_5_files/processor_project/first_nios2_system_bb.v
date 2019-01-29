
module first_nios2_system (
	char_received_external_connection_export,
	char_sent_external_connection_export,
	clk_clk,
	led_pio_external_connection_export,
	parallel_in_external_connection_export,
	parallel_load_external_connection_export,
	parallel_out_external_connection_export,
	peripheral_reset_external_connection_export,
	reset_reset_n,
	switches_external_connection_export,
	transmit_enable_external_connection_export);	

	input		char_received_external_connection_export;
	input		char_sent_external_connection_export;
	input		clk_clk;
	output	[7:0]	led_pio_external_connection_export;
	input	[7:0]	parallel_in_external_connection_export;
	output		parallel_load_external_connection_export;
	output	[7:0]	parallel_out_external_connection_export;
	output		peripheral_reset_external_connection_export;
	input		reset_reset_n;
	input	[7:0]	switches_external_connection_export;
	output		transmit_enable_external_connection_export;
endmodule
