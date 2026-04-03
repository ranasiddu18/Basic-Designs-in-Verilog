`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 10:47:05
// Design Name: 
// Module Name: baud_rate_gen
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


 
module baud_rate_gen #(
    parameter CLK_FREQ = 50000000,   // Default: 50 MHz
    parameter BAUD_RATE = 9600       // Default: 9600 bps
)(
    input  wire clk,
    input  wire rst_n,               // Active-low reset
    output reg  tick_16x
);

    // Calculate the maximum counter value for 16x oversampling
    localparam MAX_COUNT = CLK_FREQ / (BAUD_RATE * 16);
    
    // Automatically determine the required bit-width for the counter
    localparam COUNTER_WIDTH = $clog2(MAX_COUNT);

    reg [COUNTER_WIDTH-1:0] counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter  <= 0;
            tick_16x <= 1'b0;
        end else begin
            if (counter == MAX_COUNT - 1) begin
                counter  <= 0;
                tick_16x <= 1'b1; // Pulse high for exactly one clock cycle
            end else begin
                counter  <= counter + 1;
                tick_16x <= 1'b0;
            end
        end
    end

endmodule