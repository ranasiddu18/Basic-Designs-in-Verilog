`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2026 22:21:57
// Design Name: 
// Module Name: Comparator4bit
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


module Comparator4bit(
    input [3:0] A,
    input [3:0] B,
    output Greater,
    output Less,
    output Equal
    );
    
    assign Greater = A>B;
    assign Less = A<B;
    assign Equal = A==B;
endmodule
