`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2026 21:41:41
// Design Name: 
// Module Name: Even_Parity_Generator
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


module Even_Parity_Generator(
    input [3:0] In,
    output P
    );
    assign P = In[3]^In[2]^In[1]^In[0];
    // Output P(parity) goes high when the no.of 1s in the input(In) are odd
    // XOR gate is odd identifier 
endmodule
