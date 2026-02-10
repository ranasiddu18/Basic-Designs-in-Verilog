`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2026 02:01:59
// Design Name: 
// Module Name: FS_with_HS_tb
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


module FS_with_HS_tb();
reg A,B,C;
wire Diff,Bo;

FS_with_HSs uut(A,B,C,Diff,Bo);
initial 
begin
A=0;B=0;C=0;
#10 A=0;B=0;C=1;
#10 A=0;B=1;C=0;
#10 A=0;B=1;C=1;
#10 A=1;B=0;C=0;
#10 A=1;B=0;C=1;
#10 A=1;B=1;C=0;
#10 A=1;B=1;C=1;
#10 $finish;
end
endmodule
