`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 11:04:21
// Design Name: 
// Module Name: uart_tb
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


 

module uart_tb;

    // Simulation Parameters: Artificially high baud rate for faster simulation
    parameter SIM_CLK_FREQ = 50_000_000; // 50 MHz
    parameter SIM_BAUD_RATE = 1_000_000; // 1 Mbps (Simulation only)

    // Testbench Signals
    reg        clk;
    reg        rst_n;
    
    // Top Level Interface
    reg  [7:0] tb_tx_data;
    reg        tb_tx_start;
    wire       tx_busy;
    
    wire [7:0] tb_rx_data;
    wire       rx_done;
    
    wire       serial_line; // The loopback wire

    // 1. Instantiate the Unit Under Test (UUT)
    // We override the default parameters with our simulation parameters
    uart_top #(
        .CLK_FREQ(SIM_CLK_FREQ),
        .BAUD_RATE(SIM_BAUD_RATE)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .rx_pin(serial_line), // Loopback: RX listens to TX
        .tx_pin(serial_line), // Loopback: TX drives RX
        .tx_data(tb_tx_data),
        .tx_start(tb_tx_start),
        .tx_busy(tx_busy),
        .rx_data(tb_rx_data),
        .rx_done(rx_done)
    );

    // 2. Generate the 50 MHz Clock (20ns period -> toggles every 10ns)
    always #10 clk = ~clk;

    // 3. Task for sending a byte and verifying it
    // Using a task keeps the main stimulus block clean and readable
    task send_and_check(input [7:0] test_byte);
        begin
            $display("[%0t] Starting transmission of 8'h%h", $time, test_byte);
            
            // Load data and pulse start
            tb_tx_data  = test_byte;
            tb_tx_start = 1'b1;
            @(posedge clk);
            tb_tx_start = 1'b0;
            
            // Wait for the receiver to assert rx_done
            // We use a timeout to prevent infinite loops if the design is broken
            fork
                begin : wait_rx
                    @(posedge rx_done);
                    disable timeout;
                end
                begin : timeout
                    #200000; // Wait 200us (long enough for 1Mbps frame)
                    $display("[%0t] ERROR: Timeout waiting for rx_done!", $time);
                    $stop;
                end
            join

            // Check the result
            if (tb_rx_data === test_byte) begin
                $display("[%0t] SUCCESS: Sent 8'h%h, Received 8'h%h", $time, test_byte, tb_rx_data);
            end else begin
                $display("[%0t] FAILURE: Sent 8'h%h, Received 8'h%h", $time, test_byte, tb_rx_data);
            end
            
            // Wait a few clocks before sending the next byte
            repeat(10) @(posedge clk);
        end
    endtask

    // 4. Main Stimulus Block
    initial begin
        // Initialize signals
        clk         = 0;
        rst_n       = 0;
        tb_tx_data  = 8'h00;
        tb_tx_start = 0;

        $display("--- Starting UART Loopback Simulation ---");

        // Assert reset for 100ns
        #100;
        rst_n = 1;
        #100;

        // Test Case 1: Send alternating bits (10100101)
        send_and_check(8'hA5);

        // Test Case 2: Send inverted alternating bits (01011010)
        send_and_check(8'h5A);

        // Test Case 3: Send all ones (forces line high, good edge case check)
        send_and_check(8'hFF);

        // Test Case 4: Send all zeros
        send_and_check(8'h00);

        $display("--- Simulation Complete ---");
        $finish; // End the simulation automatically
    end

endmodule
