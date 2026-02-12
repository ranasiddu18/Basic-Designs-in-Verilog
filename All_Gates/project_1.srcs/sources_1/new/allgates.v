`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 10:08:23
// Design Name: 
// Module Name: allgates
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


module allgates(
    input a,
    input b,
    output c1,
    output c2,
    output c3,
    output c4,
    output c5,
    output c6,
    output c7
    );
    and(c1,a,b);
    or(c2,a,b);
    not(c3,a);
    nand(c4,a,b);
    nor(c5,a,b);
    xor(c6,a,b);
    xnor(c7,a,b);
endmodule
