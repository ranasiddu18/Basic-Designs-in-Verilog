`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 18:00:20
// Design Name: 
// Module Name: seq_det_mealy
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


 module seq_det_mealy ( clk,rst, in,out); // sequence detection of 1001
input clk,rst, in;
output reg out;
reg [1:0] state, next_st;
parameter s0 = 2'b00, s1 = 2'b01,s2 = 2'b10,s3 = 2'b11;
always @(posedge clk or negedge rst)
begin
if (!rst)
state <= s0;
else
state <= next_st;
end
always @(*) begin
case (state)
s0: begin
next_st = in ? s1 : s0;
out = 0;
end
s1: begin
next_st = in ? s1 : s2;
out = 0;
end
s2: begin
next_st = in ? s3 : s0;
out = 0;
end
s3: begin
next_st = in ? s1 : s2;
out = in ? 1 : 0;
end
default: begin
next_st = s0;
out = 0;
end
endcase
end
endmodule