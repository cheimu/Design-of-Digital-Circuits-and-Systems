	first_nios2_system u0 (
		.char_received_external_connection_export    (<connected-to-char_received_external_connection_export>),    //    char_received_external_connection.export
		.char_sent_external_connection_export        (<connected-to-char_sent_external_connection_export>),        //        char_sent_external_connection.export
		.clk_clk                                     (<connected-to-clk_clk>),                                     //                                  clk.clk
		.led_pio_external_connection_export          (<connected-to-led_pio_external_connection_export>),          //          led_pio_external_connection.export
		.parallel_in_external_connection_export      (<connected-to-parallel_in_external_connection_export>),      //      parallel_in_external_connection.export
		.parallel_load_external_connection_export    (<connected-to-parallel_load_external_connection_export>),    //    parallel_load_external_connection.export
		.parallel_out_external_connection_export     (<connected-to-parallel_out_external_connection_export>),     //     parallel_out_external_connection.export
		.peripheral_reset_external_connection_export (<connected-to-peripheral_reset_external_connection_export>), // peripheral_reset_external_connection.export
		.reset_reset_n                               (<connected-to-reset_reset_n>),                               //                                reset.reset_n
		.switches_external_connection_export         (<connected-to-switches_external_connection_export>),         //         switches_external_connection.export
		.transmit_enable_external_connection_export  (<connected-to-transmit_enable_external_connection_export>)   //  transmit_enable_external_connection.export
	);

