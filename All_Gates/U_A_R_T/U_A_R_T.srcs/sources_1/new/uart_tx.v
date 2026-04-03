`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 10:57:22
// Design Name: 
// Module Name: uart_tx
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



module uart_tx (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       tick_16x,      // From Baud Rate Generator
    input  wire       tx_start,      // Signal to begin transmission
    input  wire [7:0] tx_data,       // 8-bit payload
    output reg        tx_pin,        // Serial output to the outside world
    output reg        tx_busy        // High when transmitting
);

    // FSM States
    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam DATA  = 2'b10;
    localparam STOP  = 2'b11;

    reg [1:0] state, next_state;
    reg [3:0] tick_counter;          // Counts 16 ticks for one baud period
    reg [2:0] bit_counter;           // Counts the 8 data bits
    reg [7:0] shift_reg;             // Holds the data being shifted out

    // FSM: State Register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= IDLE;
            tick_counter <= 0;
            bit_counter  <= 0;
            tx_pin       <= 1'b1;    // Line is HIGH when idle
            tx_busy      <= 1'b0;
            shift_reg    <= 8'd0;
        end else begin
            state <= next_state;

            if (state == IDLE) begin
                tx_pin  <= 1'b1;
                tx_busy <= 1'b0;
                if (tx_start) begin
                    shift_reg <= tx_data;
                    tx_busy   <= 1'b1;
                end
            end 
            
            else if (tick_16x) begin
                if (tick_counter == 15) begin
                    tick_counter <= 0;
                    
                    case (state)
                        START: begin
                            tx_pin <= 1'b0; // Send Start bit (LOW)
                        end
                        DATA: begin
                            tx_pin <= shift_reg; // Send LSB first
                            shift_reg <= {1'b0, shift_reg[7:1]}; // Shift right
                            bit_counter <= bit_counter + 1;
                        end
                        STOP: begin
                            tx_pin <= 1'b1; // Send Stop bit (HIGH)
                        end
                    endcase
                end else begin
                    tick_counter <= tick_counter + 1;
                end
            end
        end
    end

    // FSM: Next State Logic
    always @(*) begin
        next_state = state; // Default to stay in current state
        case (state)
            IDLE:  if (tx_start) next_state = START;
            START: if (tick_16x && tick_counter == 15) next_state = DATA;
            DATA:  if (tick_16x && tick_counter == 15 && bit_counter == 7) next_state = STOP;
            STOP:  if (tick_16x && tick_counter == 15) next_state = IDLE;
        endcase
    end

endmodule
