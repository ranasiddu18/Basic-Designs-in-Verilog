`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2026 00:40:40
// Design Name: 
// Module Name: master_slave_ff
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


module master_slave_ff(clk,rst,d,master,q);
input clk,d,rst;
output reg q;
output reg master;
always@(posedge clk,negedge rst)
begin
if(!rst)
master<=0;
else
master<=d;
end
always@(negedge clk,negedge rst)
begin
if(!rst)
q<=0;
else
q<=master;
end
endmodule
 
