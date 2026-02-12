`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 01:56:38
// Design Name: 
// Module Name: multiply_tb
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


module multiply_tb();
    reg [2:0] d;
    wire [3:0] p;

    multiply uut (.d(d), .p(p));

    initial begin
        d = 0;
        repeat(8) begin
            #10 $display("d=%b (%d), p=%b (%d)", d, d, p, p);
            d = d + 1;
        end
        #10 $finish;
    end
endmodule
