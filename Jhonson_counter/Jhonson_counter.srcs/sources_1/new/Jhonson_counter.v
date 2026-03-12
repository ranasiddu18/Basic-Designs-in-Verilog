`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2026 19:14:04
// Design Name: 
// Module Name: Jhonson_counter
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


module Jhonson_counter(
    input clk,
    input rst,
    output reg [3:0] q
    );
    always@(posedge clk)
begin
if(!rst)
q<=4'b0000;
else
q<={~q[0],q[3:1]};
end

endmodule
