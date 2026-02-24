`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 12:29:12
// Design Name: 
// Module Name: Odd_Parity_Checker
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


module Odd_Parity_Checker(
    input [3:0] In,
    output P,
    output Odd
    );
    assign P = ~(In[3]^In[2]^In[1]^In[0]);
    assign Odd = ~P;   //Odd goes high when no.of 1s in the Input(In) are Odd
endmodule
