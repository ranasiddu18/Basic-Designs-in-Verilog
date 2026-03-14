`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 16:41:55
// Design Name: 
// Module Name: Siso_reg
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


module Siso_reg(
    input clk,
    input rst,
    input sin,
    output sout
    );
    reg [3:0] q;
    always@(posedge clk)
    if(!rst) 
    q<=4'b0000;
    else
    q<={q[2:0],sin};
    assign sout = q[3];
endmodule
