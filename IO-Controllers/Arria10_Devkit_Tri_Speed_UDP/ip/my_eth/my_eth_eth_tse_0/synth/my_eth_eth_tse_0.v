// my_eth_eth_tse_0.v

// Generated using ACDS version 19.3 222

`timescale 1 ps / 1 ps
module my_eth_eth_tse_0 (
		input  wire        ff_tx_clk,      //     transmit_clock_connection.clk
		input  wire        ff_rx_clk,      //      receive_clock_connection.clk
		output wire [31:0] ff_rx_data,     //                       receive.data
		output wire        ff_rx_eop,      //                              .endofpacket
		output wire [5:0]  rx_err,         //                              .error
		output wire [1:0]  ff_rx_mod,      //                              .empty
		input  wire        ff_rx_rdy,      //                              .ready
		output wire        ff_rx_sop,      //                              .startofpacket
		output wire        ff_rx_dval,     //                              .valid
		input  wire [31:0] ff_tx_data,     //                      transmit.data
		input  wire        ff_tx_eop,      //                              .endofpacket
		input  wire        ff_tx_err,      //                              .error
		input  wire [1:0]  ff_tx_mod,      //                              .empty
		output wire        ff_tx_rdy,      //                              .ready
		input  wire        ff_tx_sop,      //                              .startofpacket
		input  wire        ff_tx_wren,     //                              .valid
		input  wire        xon_gen,        //           mac_misc_connection.xon_gen
		input  wire        xoff_gen,       //                              .xoff_gen
		input  wire        ff_tx_crc_fwd,  //                              .ff_tx_crc_fwd
		output wire        ff_tx_septy,    //                              .ff_tx_septy
		output wire        tx_ff_uflow,    //                              .tx_ff_uflow
		output wire        ff_tx_a_full,   //                              .ff_tx_a_full
		output wire        ff_tx_a_empty,  //                              .ff_tx_a_empty
		output wire [17:0] rx_err_stat,    //                              .rx_err_stat
		output wire [3:0]  rx_frm_type,    //                              .rx_frm_type
		output wire        ff_rx_dsav,     //                              .ff_rx_dsav
		output wire        ff_rx_a_full,   //                              .ff_rx_a_full
		output wire        ff_rx_a_empty,  //                              .ff_rx_a_empty
		input  wire        clk,            // control_port_clock_connection.clk
		input  wire        reset,          //              reset_connection.reset
		output wire [31:0] reg_data_out,   //                  control_port.readdata
		input  wire        reg_rd,         //                              .read
		input  wire [31:0] reg_data_in,    //                              .writedata
		input  wire        reg_wr,         //                              .write
		output wire        reg_busy,       //                              .waitrequest
		input  wire [7:0]  reg_addr,       //                              .address
		input  wire        ref_clk,        //  pcs_ref_clk_clock_connection.clk
		output wire        led_crs,        //         status_led_connection.crs
		output wire        led_link,       //                              .link
		output wire        led_panel_link, //                              .panel_link
		output wire        led_col,        //                              .col
		output wire        led_an,         //                              .an
		output wire        led_char_err,   //                              .char_err
		output wire        led_disp_err,   //                              .disp_err
		output wire        rx_recovclkout, //     serdes_control_connection.export
		input  wire        rxp,            //             serial_connection.rxp_0
		output wire        txp             //                              .txp_0
	);

	my_eth_eth_tse_0_altera_eth_tse_1930_3dm6xba eth_tse_0 (
		.ff_tx_clk      (ff_tx_clk),      //   input,   width = 1,     transmit_clock_connection.clk
		.ff_rx_clk      (ff_rx_clk),      //   input,   width = 1,      receive_clock_connection.clk
		.ff_rx_data     (ff_rx_data),     //  output,  width = 32,                       receive.data
		.ff_rx_eop      (ff_rx_eop),      //  output,   width = 1,                              .endofpacket
		.rx_err         (rx_err),         //  output,   width = 6,                              .error
		.ff_rx_mod      (ff_rx_mod),      //  output,   width = 2,                              .empty
		.ff_rx_rdy      (ff_rx_rdy),      //   input,   width = 1,                              .ready
		.ff_rx_sop      (ff_rx_sop),      //  output,   width = 1,                              .startofpacket
		.ff_rx_dval     (ff_rx_dval),     //  output,   width = 1,                              .valid
		.ff_tx_data     (ff_tx_data),     //   input,  width = 32,                      transmit.data
		.ff_tx_eop      (ff_tx_eop),      //   input,   width = 1,                              .endofpacket
		.ff_tx_err      (ff_tx_err),      //   input,   width = 1,                              .error
		.ff_tx_mod      (ff_tx_mod),      //   input,   width = 2,                              .empty
		.ff_tx_rdy      (ff_tx_rdy),      //  output,   width = 1,                              .ready
		.ff_tx_sop      (ff_tx_sop),      //   input,   width = 1,                              .startofpacket
		.ff_tx_wren     (ff_tx_wren),     //   input,   width = 1,                              .valid
		.xon_gen        (xon_gen),        //   input,   width = 1,           mac_misc_connection.xon_gen
		.xoff_gen       (xoff_gen),       //   input,   width = 1,                              .xoff_gen
		.ff_tx_crc_fwd  (ff_tx_crc_fwd),  //   input,   width = 1,                              .ff_tx_crc_fwd
		.ff_tx_septy    (ff_tx_septy),    //  output,   width = 1,                              .ff_tx_septy
		.tx_ff_uflow    (tx_ff_uflow),    //  output,   width = 1,                              .tx_ff_uflow
		.ff_tx_a_full   (ff_tx_a_full),   //  output,   width = 1,                              .ff_tx_a_full
		.ff_tx_a_empty  (ff_tx_a_empty),  //  output,   width = 1,                              .ff_tx_a_empty
		.rx_err_stat    (rx_err_stat),    //  output,  width = 18,                              .rx_err_stat
		.rx_frm_type    (rx_frm_type),    //  output,   width = 4,                              .rx_frm_type
		.ff_rx_dsav     (ff_rx_dsav),     //  output,   width = 1,                              .ff_rx_dsav
		.ff_rx_a_full   (ff_rx_a_full),   //  output,   width = 1,                              .ff_rx_a_full
		.ff_rx_a_empty  (ff_rx_a_empty),  //  output,   width = 1,                              .ff_rx_a_empty
		.clk            (clk),            //   input,   width = 1, control_port_clock_connection.clk
		.reset          (reset),          //   input,   width = 1,              reset_connection.reset
		.reg_data_out   (reg_data_out),   //  output,  width = 32,                  control_port.readdata
		.reg_rd         (reg_rd),         //   input,   width = 1,                              .read
		.reg_data_in    (reg_data_in),    //   input,  width = 32,                              .writedata
		.reg_wr         (reg_wr),         //   input,   width = 1,                              .write
		.reg_busy       (reg_busy),       //  output,   width = 1,                              .waitrequest
		.reg_addr       (reg_addr),       //   input,   width = 8,                              .address
		.ref_clk        (ref_clk),        //   input,   width = 1,  pcs_ref_clk_clock_connection.clk
		.led_crs        (led_crs),        //  output,   width = 1,         status_led_connection.crs
		.led_link       (led_link),       //  output,   width = 1,                              .link
		.led_panel_link (led_panel_link), //  output,   width = 1,                              .panel_link
		.led_col        (led_col),        //  output,   width = 1,                              .col
		.led_an         (led_an),         //  output,   width = 1,                              .an
		.led_char_err   (led_char_err),   //  output,   width = 1,                              .char_err
		.led_disp_err   (led_disp_err),   //  output,   width = 1,                              .disp_err
		.rx_recovclkout (rx_recovclkout), //  output,   width = 1,     serdes_control_connection.export
		.rxp            (rxp),            //   input,   width = 1,             serial_connection.rxp_0
		.txp            (txp)             //  output,   width = 1,                              .txp_0
	);

endmodule
