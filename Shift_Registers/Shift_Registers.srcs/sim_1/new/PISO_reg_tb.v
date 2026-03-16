`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 17:31:52
// Design Name: 
// Module Name: PISO_reg_tb
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


module PISO_reg_tb();
reg clk,rst,ld;
reg [3:0] Pin;
wire sout;

PISO_reg uut(clk,rst,ld,Pin,sout);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1;ld=0; Pin=4'b1101; #5
rst=0;ld=1;Pin=4'b1010; #10
rst=1; Pin=4'b0101; #10
Pin=4'b1011; #10
Pin=4'b1101;ld=0; #10
Pin=4'b0000; #10
Pin=4'b1101;ld=1; #5
$finish;
end

endmodule
