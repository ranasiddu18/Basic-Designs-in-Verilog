`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2026 22:27:09
// Design Name: 
// Module Name: Comparator_tb
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


module Comparator_tb();
reg [3:0] A,B;
wire Greater,Less,Equal;
 Comparator4bit uut(A,B,Greater,Less,Equal);
 
initial 
begin
A=0;B=0;
#10 $display("Simulation Started");
$display("Time\t A\t B\t Greater\t Less\t Equal\t");
$display("______________________________________________");
A=0;B=0;#10
$strobe("%0t\t A=%d\t B=%d\t Greater=%d\t Less=%d\t Equal=%d\t",$time,A,B,Greater,Less,Equal);
A=5;B=6;#10
$strobe("%0t\t A=%d\t B=%d\t Greater=%d\t Less=%d\t Equal=%d\t",$time,A,B,Greater,Less,Equal);
A=10;B=10;#10
$strobe("%0t\t A=%d\t B=%d\t Greater=%d\t Less=%d\t Equal=%d\t",$time,A,B,Greater,Less,Equal);
A=25;B=12;#10
$strobe("%0t\t A=%d\t B=%d\t Greater=%d\t Less=%d\t Equal=%d\t",$time,A,B,Greater,Less,Equal);
A=-5;B=-6;#10
$strobe("%0t\t A=%d\t B=%d\t Greater=%d\t Less=%d\t Equal=%d\t",$time,A,B,Greater,Less,Equal); #10
$finish;
 
end
endmodule
