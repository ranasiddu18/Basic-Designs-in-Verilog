`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 01:02:21
// Design Name: 
// Module Name: Ripple_carry_adder
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


module Ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    wire c1,c2,c3;
    
    Full_adder d1(A[0],B[0],Cin,Sum[0],c1);
     Full_adder d2(A[1],B[1],c1,Sum[1],c2);
      Full_adder d3(A[2],B[2],c2,Sum[2],c3);
       Full_adder d4(A[3],B[3],c3,Sum[3],Cout);
    
endmodule
