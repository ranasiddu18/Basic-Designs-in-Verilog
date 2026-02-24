`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2026 10:48:23
// Design Name: 
// Module Name: Seven_Segment_tb
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


module Seven_Segment_tb();
reg [3:0] In;
wire a,b,c,d,e,f,g;
Seven_Segment_Display uut(In,a,b,c,d,e,f,g);
initial
begin
In=4'b0000;#10
In=4'b0001;#10
In=4'b0010;#10
In=4'b0011;#10
In=4'b0100;#10
In=4'b0101;#10
In=4'b0110;#10
In=4'b0111;#10
In=4'b1000;#10
In=4'b1001;#10
$finish;
end
endmodule
