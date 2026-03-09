`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2026 16:45:15
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
    input t,
    input rst,
    input clk,
    output reg q
    );
    always@(posedge clk)
    begin
    if(rst) begin
    q<=1'b0; end
    else if(t) begin
    q<=~q;
    end
    end
    
endmodule
