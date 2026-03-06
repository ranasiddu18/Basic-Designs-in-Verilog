`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2026 18:59:31
// Design Name: 
// Module Name: JK_flipflop_tb
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


module JK_flipflop_tb();
reg j,clk,k;
wire q;
JK_flipflop uut(j,clk,k,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
j=0; k=0; #10
j=0; k=1; #10
j=1; k=0; #10
j=1; k=1; #10
j=0; k=0; #10
$finish;
end
endmodule
