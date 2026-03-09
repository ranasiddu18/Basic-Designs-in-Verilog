`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2026 16:57:05
// Design Name: 
// Module Name: T_flipflop_tb
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


module T_flipflop_tb();
reg t,rst,clk;
wire q;
T_flipflop uut(t,rst,clk,q);
initial begin
clk=0;
forever #5 clk=~clk; end
initial begin
rst =0;#7
rst=1;t=0; #10
t=1; #10
t=1; #10
rst=0;t=0; #10
rst=1;t=1; #10
t=0; #10
$finish;


end
endmodule
