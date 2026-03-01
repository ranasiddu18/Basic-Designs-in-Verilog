`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2026 16:53:49
// Design Name: 
// Module Name: square_3bit
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


module square_3bit(
input  wire [2:0] A,
    output wire [5:0] S
    );
    assign S[0] = A[0];
    assign S[1] = 1'b0;
    assign S[2] = A[1] & ~A[0];
    assign S[3] = (A[2] ^ A[1]) & A[0];
    assign S[4] = A[2] & ~A[1];
    assign S[5] = A[2] & A[1];
endmodule
