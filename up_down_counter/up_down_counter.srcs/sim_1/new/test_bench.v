`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 17:42:28
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
reg clk,en,rst;
wire[2:0]out;
up_down_counter_8 uut(clk,rst,en,out);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
en=0;rst=1; #5
en=1;rst=0; #5
en=1;rst=1;#85
en=0;rst=1; #90
$finish;
end
endmodule
