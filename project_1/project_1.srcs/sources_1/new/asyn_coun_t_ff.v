`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 16:25:13
// Design Name: 
// Module Name: asyn_coun_t_ff
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


module asyn_coun_t_ff(
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
