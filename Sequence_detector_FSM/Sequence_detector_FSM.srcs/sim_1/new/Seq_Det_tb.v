`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 19:03:49
// Design Name: 
// Module Name: Seq_Det_tb
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


module Seq_Det_tb();
reg clk,rst, in;
wire out;
seq_det_mealy uut(clk,rst,in,out);
initial
begin
clk=0;
forever#5 clk=~clk;
end
initial
begin
in=1; rst=1; #5
in=0;rst=0;#5
in=1; rst=1; #5
in=0; #10
in=1; #10
in=0; #10
in=1; #10
in=1; #10
in=0; #10
in=1; #10
in=1; #10
in=0; #10
$finish;
end
endmodule
