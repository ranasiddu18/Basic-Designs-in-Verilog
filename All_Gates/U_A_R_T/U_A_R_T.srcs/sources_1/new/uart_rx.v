`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 10:58:34
// Design Name: 
// Module Name: uart_rx
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




module uart_rx (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       tick_16x,
    input  wire       rx_pin,        // Serial input from the outside world
    output reg  [7:0] rx_data,       // Received 8-bit payload
    output reg        rx_done        // Pulses high for one clock when data is valid
);

    // Metastability Registers
    reg rx_sync_1, rx_sync_2;

    // FSM States
    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam DATA  = 2'b10;
    localparam STOP  = 2'b11;

    reg [1:0] state, next_state;
    reg [3:0] tick_counter;
    reg [2:0] bit_counter;
    reg [7:0] shift_reg;

    // Synchronize incoming asynchronous signal
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_sync_1 <= 1'b1;
            rx_sync_2 <= 1'b1;
        end else begin
            rx_sync_1 <= rx_pin;
            rx_sync_2 <= rx_sync_1;
        end
    end

    // FSM: State Register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= IDLE;
            tick_counter <= 0;
            bit_counter  <= 0;
            shift_reg    <= 0;
            rx_data      <= 0;
            rx_done      <= 1'b0;
        end else begin
            state <= next_state;
            rx_done <= 1'b0; // Default to 0, pulse when complete

            if (tick_16x) begin
                case (state)
                    IDLE: begin
                        tick_counter <= 0;
                    end
                    START: begin
                        if (tick_counter == 7) begin // Sample at middle of Start bit
                            tick_counter <= 0;
                            // If it's not 0, it was a noise spike, FSM handles returning to IDLE
                        end else begin
                            tick_counter <= tick_counter + 1;
                        end
                    end
                    DATA: begin
                        if (tick_counter == 15) begin // Sample at middle of Data bit
                            tick_counter <= 0;
                            shift_reg <= {rx_sync_2, shift_reg[7:1]}; // Shift in MSB, push down
                            bit_counter <= bit_counter + 1;
                        end else begin
                            tick_counter <= tick_counter + 1;
                        end
                    end
                    STOP: begin
                        if (tick_counter == 15) begin // Middle of Stop bit
                            rx_data <= shift_reg;
                            rx_done <= 1'b1;         // Signal valid data
                            tick_counter <= 0;
                        end else begin
                            tick_counter <= tick_counter + 1;
                        end
                    end
                endcase
            end
        end
    end

    // FSM: Next State Logic
    always @(*) begin
        next_state = state;
        case (state)
            IDLE: begin
                // Detect falling edge of Start Bit
                if (~rx_sync_2) next_state = START; 
            end
            START: begin
                if (tick_16x && tick_counter == 7) begin
                    if (~rx_sync_2) next_state = DATA; // Confirm Start bit
                    else next_state = IDLE;            // False start, go back
                end
            end
            DATA: begin
                if (tick_16x && tick_counter == 15 && bit_counter == 7) next_state = STOP;
            end
            STOP: begin
                if (tick_16x && tick_counter == 15) next_state = IDLE;
            end
        endcase
    end

endmodule
