`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 17:21:00
// Design Name: 
// Module Name: CarrylookAhead_adder_tb
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


module CarrylookAhead_adder_tb();
reg [3:0] A,B;
reg Cin;
wire [3:0] S; wire Cout; wire [4:0] out;

CarrylookAhead_Adder uut(A,B,Cin,S,Cout,out);
initial begin
A=4'b1000; B=4'b1000; Cin=1'b1; #10
A=4'b1100; B=4'b0010; Cin=1'b1; #10
A=4'b0100; B=4'b0111; Cin=1'b0; #10
A=4'b1111; B=4'b1100; Cin=1'b1; #10
A=4'b1111; B=4'b1111; Cin=1'b1; #10
$finish;
end
endmodule
