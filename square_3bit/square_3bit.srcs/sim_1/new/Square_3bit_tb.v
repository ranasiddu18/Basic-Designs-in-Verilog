`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2026 16:58:52
// Design Name: 
// Module Name: Square_3bit_tb
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


module Square_3bit_tb();
reg[2:0]A;wire[5:0]S;
square_3bit uut(A,S);
initial
begin
A=3'b000;#10
A=3'b001;#10
A=3'b010;#10
A=3'b011;#10
A=3'b100;#10
A=3'b101;#10
A=3'b110;#10
A=3'b111;#10
$finish;
end
endmodule
