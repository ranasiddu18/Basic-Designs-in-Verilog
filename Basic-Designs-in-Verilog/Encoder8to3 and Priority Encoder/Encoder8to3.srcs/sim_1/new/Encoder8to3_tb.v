`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2026 00:06:00
// Design Name: 
// Module Name: Encoder8to3_tb
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


module Encoder8to3_tb();
reg [7:0] Ain;
wire [2:0] Bout;

Encoder8_3 uut(Ain,Bout);

initial 
begin
Ain=0;
#10
$display("Simulation started");
$display("Time\t Ain\t Bout\t");
$display("______________________________________");

Ain = 8'b00000000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00000001;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00000010;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00000100;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00001000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00010000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b00100000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);

Ain = 8'b01000000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
Ain = 8'b10000000;
#10
$strobe("%0t\t Ain=%b\t Bout = %b\t",$time,Ain,Bout);
$finish;#10
$strobe("simulation finition");
end
endmodule
