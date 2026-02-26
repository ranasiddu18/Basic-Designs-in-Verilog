`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2026 11:01:37
// Design Name: 
// Module Name: BCD_ADDER
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


module BCD_ADDER(
    input [3:0] a,
    input [3:0] b,
    input Cin,
    output [3:0] sum,
    output cout
    );
    reg [4:0] sum_temp;
    reg cout_temp;
    always@(*)
    begin
    sum_temp = a+b+Cin;
    if(sum_temp>9) begin
    sum_temp = sum_temp+6;
    cout_temp = 1'b1; end
    else
    sum_temp = sum_temp[3:0];
    cout_temp = sum_temp[4];
    end
    assign sum = sum_temp;
    assign cout = cout_temp;
endmodule

