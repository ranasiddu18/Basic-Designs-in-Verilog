`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 11:55:51
// Design Name: 
// Module Name: Even_Parity_Checker
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


module Even_Parity_Checker(
    input [3:0] IN,
    output P,
    output Even
    );
     assign P = IN[3]^IN[2]^IN[1]^IN[0];
     assign Even = ~P;
     
     // Even goes high when Input(IN) has even no.of 1s
endmodule
