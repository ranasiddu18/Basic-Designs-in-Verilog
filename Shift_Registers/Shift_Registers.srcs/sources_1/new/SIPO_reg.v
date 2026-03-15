`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2026 17:21:04
// Design Name: 
// Module Name: SIPO_reg
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


module SIPO_reg(
    input clk,
    input rst,
    input sin,
    output reg [3:0] q
    );
    always@(posedge clk)
    begin
    if(!rst) 
    q<=4'b0000;
    else
    q<= {q[2:0],sin};
    end
endmodule
