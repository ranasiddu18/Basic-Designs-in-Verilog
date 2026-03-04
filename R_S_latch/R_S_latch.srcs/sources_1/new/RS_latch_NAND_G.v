`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2026 19:09:00
// Design Name: 
// Module Name: RS_latch_NAND_G
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


module RS_latch_NAND_G(
    input Reset,
    input Set,
    output Q,
    output Q0
    );
    assign Q = ~(Reset&Q0);
    assign Q0 = ~(Set&Q);
endmodule
