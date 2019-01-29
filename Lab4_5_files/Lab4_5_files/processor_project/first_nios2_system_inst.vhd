	component first_nios2_system is
		port (
			char_received_external_connection_export    : in  std_logic                    := 'X';             -- export
			char_sent_external_connection_export        : in  std_logic                    := 'X';             -- export
			clk_clk                                     : in  std_logic                    := 'X';             -- clk
			led_pio_external_connection_export          : out std_logic_vector(7 downto 0);                    -- export
			parallel_in_external_connection_export      : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			parallel_load_external_connection_export    : out std_logic;                                       -- export
			parallel_out_external_connection_export     : out std_logic_vector(7 downto 0);                    -- export
			peripheral_reset_external_connection_export : out std_logic;                                       -- export
			reset_reset_n                               : in  std_logic                    := 'X';             -- reset_n
			switches_external_connection_export         : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			transmit_enable_external_connection_export  : out std_logic                                        -- export
		);
	end component first_nios2_system;

	u0 : component first_nios2_system
		port map (
			char_received_external_connection_export    => CONNECTED_TO_char_received_external_connection_export,    --    char_received_external_connection.export
			char_sent_external_connection_export        => CONNECTED_TO_char_sent_external_connection_export,        --        char_sent_external_connection.export
			clk_clk                                     => CONNECTED_TO_clk_clk,                                     --                                  clk.clk
			led_pio_external_connection_export          => CONNECTED_TO_led_pio_external_connection_export,          --          led_pio_external_connection.export
			parallel_in_external_connection_export      => CONNECTED_TO_parallel_in_external_connection_export,      --      parallel_in_external_connection.export
			parallel_load_external_connection_export    => CONNECTED_TO_parallel_load_external_connection_export,    --    parallel_load_external_connection.export
			parallel_out_external_connection_export     => CONNECTED_TO_parallel_out_external_connection_export,     --     parallel_out_external_connection.export
			peripheral_reset_external_connection_export => CONNECTED_TO_peripheral_reset_external_connection_export, -- peripheral_reset_external_connection.export
			reset_reset_n                               => CONNECTED_TO_reset_reset_n,                               --                                reset.reset_n
			switches_external_connection_export         => CONNECTED_TO_switches_external_connection_export,         --         switches_external_connection.export
			transmit_enable_external_connection_export  => CONNECTED_TO_transmit_enable_external_connection_export   --  transmit_enable_external_connection.export
		);

