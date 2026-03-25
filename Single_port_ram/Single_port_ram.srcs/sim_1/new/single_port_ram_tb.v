`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 19:25:10
// Design Name: 
// Module Name: single_port_ram_tb
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


 module single_port_ram_tb; // Removed the illegal nested module

    // Parameters
    parameter ADDR_WIDTH = 4;
    parameter DATA_WIDTH = 16;
    parameter DEPTH = 16;

    // Testbench Signals
    reg clk;
    reg cs;
    reg we;
    reg oe;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] tb_data;
    
    // The bidirectional bus must be a wire
    wire [DATA_WIDTH-1:0] data; 

    // Instantiate the RAM
    Single__Port_Sync_Ram #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH)
    ) u0 (
        .clk(clk),
        .addr(addr),
        .data(data),
        .cs(cs),
        .we(we),
        .oe(oe)
    );

    // Clock Generation (10ns period)
    initial clk = 0;
    always #5 clk = ~clk; 

    // Tri-state driver: The testbench drives the bus ONLY when writing
    assign data = (we) ? tb_data : {DATA_WIDTH{1'bz}};

    integer i;

    initial begin
        // 1. Initialize all signals to known states
        cs = 0;
        we = 0;
        oe = 0;
        addr = 0;
        tb_data = 0;

        // Wait for a few clock cycles before starting
        repeat (2) @(posedge clk);

        $display("========================================");
        $display("          STARTING WRITE PHASE          ");
        $display("========================================");
        
        for (i = 0; i < DEPTH; i = i + 1) begin
            @(posedge clk); // Synchronize to clock
            addr    <= i;
            we      <= 1;
            cs      <= 1;
            oe      <= 0;
            tb_data <= $random; // Generate random data
            $display("WRITE -> Addr: %0d | Data: %0h", i, tb_data);
        end

        $display("========================================");
        $display("          STARTING READ PHASE           ");
        $display("========================================");
        
        for (i = 0; i < DEPTH; i = i + 1) begin
            @(posedge clk); // Request the read
            addr <= i;
            we   <= 0;
            cs   <= 1;
            oe   <= 1;
            
            // Wait ONE extra clock cycle for the RAM's internal register to update
            @(posedge clk); 
            $display("READ  <- Addr: %0d | Data on bus: %0h", addr, data);
        end

        // End simulation
        #20 $finish;
    end

endmodule

 