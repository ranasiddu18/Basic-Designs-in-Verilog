`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2026 21:58:28
// Design Name: 
// Module Name: Odd_Parity_Generator_tb
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


module Odd_Parity_Generator_tb();
reg [3:0] In;
wire P;
Odd_Parity_Generator uut(In,P);
initial begin
In = 4'b0010; #10
In = 4'b0110; #10
In = 4'b1110; #10
In = 4'b1111; #10
In = 4'b0000; #10
$finish;
end
endmodule
