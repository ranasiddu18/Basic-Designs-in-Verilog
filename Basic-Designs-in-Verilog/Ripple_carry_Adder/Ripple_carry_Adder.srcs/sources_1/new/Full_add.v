`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 01:03:52
// Design Name: 
// Module Name: Full_add
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


module Full_add(
    input a,
    input b,
    input cin,
    output S,
    output C
    );
    
    assign S = a^b^cin;
    assign C = a&b|b&cin|cin&a ;
endmodule
