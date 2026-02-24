`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 18:52:54
// Design Name: 
// Module Name: Odd_Parity_Checker_tb
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


module Odd_Parity_Checker_tb();
reg [3:0] In;
wire P,Odd;
Odd_Parity_Checker uut(In,P,Odd);
initial begin
In = 4'b0010; #10
In = 4'b0110; #10
In = 4'b1110; #10
In = 4'b1111; #10
In = 4'b0000; #10
$finish;
end
endmodule
