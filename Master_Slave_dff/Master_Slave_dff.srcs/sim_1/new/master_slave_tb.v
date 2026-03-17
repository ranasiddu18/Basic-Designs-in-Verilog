`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2026 00:41:56
// Design Name: 
// Module Name: master_slave_tb
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


module master_slave_tb();
reg clk,rst,d;
wire master,q;
master_slave_ff uut(clk,rst,d,master,q);
initial
begin
clk=0;
forever#5 clk=~clk;
end
initial
begin
d=1;rst=1; #10
d=1;rst=0; #5
d=1;rst=1; #10
d=0;rst=1; #10
d=1;rst=1; #10
d=0;rst=1; #10
d=1;rst=1; #10
$finish;
end
endmodule
