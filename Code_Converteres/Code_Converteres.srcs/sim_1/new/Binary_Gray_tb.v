`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 20:59:44
// Design Name: 
// Module Name: Binary_Gray_tb
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


module Binary_Gray_tb();
reg[3:0]Bin;
wire[3:0]Gout;
Binary__Gray uut(Bin,Gout);
initial
begin
Bin=4'b1010; #10
Bin=4'b1000; #10
Bin=4'b0101; #10
Bin=4'b1110; #10
Bin=4'b0010; #10
$finish;
end
endmodule
