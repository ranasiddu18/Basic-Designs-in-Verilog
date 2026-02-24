`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2026 01:18:06
// Design Name: 
// Module Name: Full_Sub
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


module Full_Sub(
    input a,
    input b,
    input c,
    output diff,
    output B
    );
    
    assign diff = a^b^c;
    assign B = (~a&b | c&a&b | c&~a&~b);
    endmodule
