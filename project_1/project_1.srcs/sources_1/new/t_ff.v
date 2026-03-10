`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 16:29:19
// Design Name: 
// Module Name: t_ff
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



 module t_ff(
t,clk,rst,q);
input t,clk,rst;
output reg q;
always @(posedge clk,negedge rst)
begin
if(rst)
q<=0;
else if(t)
q<=~q;
else
q<=q;
end
endmodule

