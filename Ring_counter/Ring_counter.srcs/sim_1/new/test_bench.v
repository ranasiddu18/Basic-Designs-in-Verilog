`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2026 20:39:28
// Design Name: 
// Module Name: test_bench
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


module test_bench();
reg clk,rst;
wire [3:0]q;
Ring_Counter4bit uut(clk,rst,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1;#5
rst=0;#10
rst=1; #50
$finish;
end

endmodule
