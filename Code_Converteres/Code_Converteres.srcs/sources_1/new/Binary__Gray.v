`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 20:55:33
// Design Name: 
// Module Name: Binary__Gray
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


module Binary__Gray(
    input [3:0] Bin,
    output [3:0] Gout
    );
    
   assign Gout[3]=Bin[3];
   assign Gout[2]=Bin[3]^Bin[2];
   assign Gout[1]=Bin[2]^Bin[1];
   assign Gout[0]=Bin[1]^Bin[0];
   
endmodule
