`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 18:56:07
// Design Name: 
// Module Name: Single__Port_Sync_Ram
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


module Single__Port_Sync_Ram#(parameter ADDR_WIDTH = 4,
parameter DATA_WIDTH = 32,parameter DEPTH =16

)
(input clk,
input [ADDR_WIDTH-1:0] addr,
inout [DATA_WIDTH-1:0] data,
input cs,we,oe
);

reg [DATA_WIDTH-1:0] temp_data;
 reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
 
 always@(posedge clk)
 begin
 if (cs&we)
 mem[addr] <=data; end
 always@(posedge clk)
 begin
 if(cs& (~we))
 temp_data<=mem[addr]; end 
 assign data = cs & oe & !we ? temp_data : {DATA_WIDTH{1'hz}};
endmodule
