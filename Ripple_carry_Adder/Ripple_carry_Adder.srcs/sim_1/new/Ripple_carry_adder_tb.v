`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 01:15:42
// Design Name: 
// Module Name: Ripple_carry_adder_tb
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


module Ripple_carry_adder_tb();

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

Ripple_carry_adder uut(A,B,Cin,Sum,Cout);

initial
begin
 
A=0;B=0;Cin=0;
#10
$display("Simulation started");

A=4'b0000;B=4'b0001;Cin=1'b0;
#10 
$strobe("A=%d,B=%d,Cin=%d",A,B,Cin);

A=4'b0110;B=4'b0010;Cin=1'b1;
#10 
$strobe("A=%d,B=%d,Cin=%d",A,B,Cin);

A=4'b1000;B=4'b1111;Cin=1'b0;
#10 
$strobe("A=%d,B=%d,Cin=%d",A,B,Cin);

A=4'b1111;B=4'b1111;Cin=1'b0;
#10 
$strobe("A=%d,B=%d,Cin=%d",A,B,Cin);

#10$finish;
end
endmodule
