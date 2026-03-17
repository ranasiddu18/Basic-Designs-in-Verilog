`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2026 17:41:57
// Design Name: 
// Module Name: PIPO_reg
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


module PIPO_reg(
    input clk,
    input rst,
    input ld,
    input [3:0] Pin,
    output reg [3:0] Pout
    );
    always@(posedge clk)
    begin
    if(!rst)
    Pout<=4'b0000;
    else if(ld)
    Pout<=Pin;
    else
    Pout<=Pout<<1;
    end
endmodule
