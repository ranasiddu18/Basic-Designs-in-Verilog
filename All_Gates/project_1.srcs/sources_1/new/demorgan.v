`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 01:23:22
// Design Name: 
// Module Name: demorgan
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


module demorgan(
    input a,
    input b,
    output f1,
    output f2,
    output f3,
    output f4
    );
    assign f1=~(a&b);
    assign f2=(~a)|(~b);
    assign f3=~(a|b);
    assign f4=(~a)&(~b);
endmodule

