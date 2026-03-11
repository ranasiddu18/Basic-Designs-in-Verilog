`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 17:38:44
// Design Name: 
// Module Name: up_down_counter_8
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


module up_down_counter_8(
clk,rst,en,out);
input clk,rst,en;
output reg[2:0] out;
always @(posedge clk)
begin
if(!rst)
out=3'b000;
else if (en)
out=out+1;
else
out=out-1;
end
endmodule
 
