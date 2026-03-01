`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 10:43:45
// Design Name: 
// Module Name: BCD_Excess3_tb
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


module BCD_Excess3_tb();
reg [3:0] A;
wire [3:0] Out;
BCD_Excess3 uut(A,Out);
initial begin
A=4'b0000; #10
A=4'b0001; #10
A=4'b0010; #10
A=4'b0011; #10
A=4'b0100; #10
A=4'b0101; #10
A=4'b0110; #10
A=4'b0111; #10
A=4'b1000; #10
A=4'b1001; #10
$finish;
end
endmodule
