`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 16:48:28
// Design Name: 
// Module Name: Siso_reg_tb
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


module Siso_reg_tb();
reg clk,rst,sin;
wire sout;

Siso_reg uut(clk,rst,sin,sout);

 always #5 clk = ~clk; 

     
    initial begin
        
        clk = 0;
        sin = 0;
        rst = 1; 
        #10 rst = 0; 
        repeat(5) begin
            @ (negedge clk);  
            sin = ~sin; 
        end         
        #20; 
        $finish;
    end
endmodule
