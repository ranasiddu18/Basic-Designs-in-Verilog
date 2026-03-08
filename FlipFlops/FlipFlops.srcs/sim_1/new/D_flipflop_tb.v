`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2026 17:41:20
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb();
reg d,clk;
wire q;
D_flipflop uut(d,clk,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
d=0;#10
d=1;#10
d=0;#10
d=1;#10
d=1;#10
d=0;#10
$finish;
end

endmodule
