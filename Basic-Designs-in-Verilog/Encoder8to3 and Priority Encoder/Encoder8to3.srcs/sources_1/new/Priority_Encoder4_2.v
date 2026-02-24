`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 18:04:01
// Design Name: 
// Module Name: Priority_Encoder4_2
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


module Priority_Encoder4_2(
    input [3:0] Iin,
    output [1:0] O,
    output V
    );
    
    assign O[0] = Iin[3]|(~Iin[2]&Iin[0]);
    assign O[1] = Iin[3] | Iin[2] ;
    assign V = Iin[3] | Iin[2] |Iin[1] |Iin[0] ;
endmodule
