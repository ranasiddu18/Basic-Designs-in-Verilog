`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 19:06:44
// Design Name: 
// Module Name: R_S_latch_Nor_G
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


module R_S_latch_Nor_G(
    input Reset,
    input Set,
    output Q,
    output Q0
    );
    assign Q = ~(Reset | Q0);
    assign Q0 = ~(Set | Q);
endmodule
