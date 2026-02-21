`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2026 21:21:43
// Design Name: 
// Module Name: Gray__Binary
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


module Gray__Binary(
    input [3:0] Gin,
    output [3:0] Bout
    );
    
    assign Bout[3]= Gin[3];
    assign Bout[2] = Gin[2] ^ Gin[3];
    assign Bout[1] = Gin[1] ^ Gin[2];
    assign Bout[0] = Gin[0] ^ Gin[1];
    
endmodule
