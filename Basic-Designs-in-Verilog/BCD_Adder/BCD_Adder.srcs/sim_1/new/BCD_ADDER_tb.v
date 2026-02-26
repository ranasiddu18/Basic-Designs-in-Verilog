`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2026 11:05:46
// Design Name: 
// Module Name: BCD_ADDER_tb
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


module BCD_ADDER_tb();
reg [3:0]a,b;
reg Cin;
wire[3:0]sum;
wire cout;
BCD_ADDER uut(a,b,Cin,sum,cout);
initial
begin
a=4'b0001; b=4'b1001; Cin=0; #10;
a=4'b1001; b=4'b1001; Cin=1; #10;
a=4'b0001; b=4'b0101; Cin=1; #10;
a=4'b0111; b=4'b1001; Cin=1; #10;
a=4'b0111; b=4'b0111; Cin=0; #10;
$finish;
end
endmodule
