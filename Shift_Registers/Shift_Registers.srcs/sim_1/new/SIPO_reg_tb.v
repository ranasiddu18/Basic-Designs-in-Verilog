`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2026 17:24:41
// Design Name: 
// Module Name: SIPO_reg_tb
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


module SIPO_reg_tb();
 reg clk,rst,sin;
wire[3:0] pout;
SIPO_reg uut(clk,rst,sin,pout);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1; sin=1; #5
rst=0; sin=0; #10
rst=1; sin=1; #10
sin=1; #10
sin=1; #10
sin=0; #10
sin=1; #5
$finish;
end

endmodule
