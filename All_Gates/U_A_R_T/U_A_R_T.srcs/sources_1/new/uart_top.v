`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 11:00:03
// Design Name: 
// Module Name: uart_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module uart_top #(
    parameter CLK_FREQ = 50000000,
    parameter BAUD_RATE = 9600
)(
    input  wire       clk,
    input  wire       rst_n,
    
    // UART interface
    input  wire       rx_pin,
    output wire       tx_pin,
    
    // User interface (usually connected to FIFO or soft-core processor)
    input  wire [7:0] tx_data,
    input  wire       tx_start,
    output wire       tx_busy,
    
    output wire [7:0] rx_data,
    output wire       rx_done
);

    // Internal wire for the baud tick
    wire tick_16x;

    // Instantiate Baud Rate Generator
    baud_rate_gen #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) brg_inst (
        .clk(clk),
        .rst_n(rst_n),
        .tick_16x(tick_16x)
    );

    // Instantiate Transmitter
    uart_tx tx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .tick_16x(tick_16x),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_pin(tx_pin),
        .tx_busy(tx_busy)
    );

    // Instantiate Receiver
    uart_rx rx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .tick_16x(tick_16x),
        .rx_pin(rx_pin),
        .rx_data(rx_data),
        .rx_done(rx_done)
    );

endmodule
