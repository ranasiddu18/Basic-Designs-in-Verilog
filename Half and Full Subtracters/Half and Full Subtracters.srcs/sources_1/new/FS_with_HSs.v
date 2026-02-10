`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2026 01:52:27
// Design Name: 
// Module Name: FS_with_HSs
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


module FS_with_HSs(
    input A,
    input B,
    input C,
    output Diff,
    output Bo
    );
    
   wire s1,s2,s3;
   half_sub d1(A,B,s1,s2);
   half_sub d2(s1,C,Diff,s3);
   assign Bo = s2|s3;
endmodule
