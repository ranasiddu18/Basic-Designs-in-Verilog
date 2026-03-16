`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 17:24:32
// Design Name: 
// Module Name: PISO_reg
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


module PISO_reg(
    input clk,
    input rst,
    input ld,
    input [3:0] Pin,
    output sout
    );
    reg [3:0] q;
    always@(posedge clk)
    begin
    if(!rst)
    q<=4'b0000;
    else if(ld)
    q<=Pin;
    else
    q<=q<<1;
    end
    assign sout = q[3];
endmodule
