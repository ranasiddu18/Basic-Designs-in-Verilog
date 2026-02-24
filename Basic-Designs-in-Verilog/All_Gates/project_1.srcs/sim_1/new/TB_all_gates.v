`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 10:33:42
// Design Name: 
// Module Name: TB_all_gates
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


module TB_all_gates();
reg a,b;
wire c1,c2,c3,c4,c5,c6,c7;
allgates uut(.a(a),.b(b),.c1(c1),.c2(c2),.c3(c3),.c4(c4),.c5(c5),.c6(c6),.c7(c7));
initial 
begin
repeat(5) begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
#10$finish;
end
endmodule
