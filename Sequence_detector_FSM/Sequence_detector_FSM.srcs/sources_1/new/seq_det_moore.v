`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2026 17:49:38
// Design Name: 
// Module Name: seq_det_moore
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


module seq_det_moore(clk,rst,in,out);
input clk,rst,in;
output reg out;
reg [2:0] state, next_st;
parameter s0 = 3'b000, s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4=3'b100;
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
next_st = in ? s4 : s2;
out = 0;
end
s4: begin
next_st = in ? s1 : s2;
out = 1;
end
default: begin
next_st = s0;
out = 0;
end
endcase
end
endmodule

