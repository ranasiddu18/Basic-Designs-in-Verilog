`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 01:25:21
// Design Name: 
// Module Name: demorgan_tb
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


module demorgan_tb();
 reg a,b;
 wire f1,f2,f3,f4;
 demorgan uut(.a(a),.b(b),.f1(f1),.f2(f2),.f3(f3),.f4(f4));
initial 
begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#10 $finish;
end


endmodule
