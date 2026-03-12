`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2026 19:16:32
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk,rst;
wire [3:0] q;

Jhonson_counter uut(clk,rst,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1; #5
rst=0;#5
rst=1; #90
$finish;
end
endmodule
