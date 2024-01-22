`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2024 14:19:15
// Design Name: 
// Module Name: Test_DeMUX
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


module Test_DeMUX();
reg I,s0,s1;
wire y0,y1,y2,y3;
DeMUX1to4 dut(.y0(y0),.y1(y1),.y2(y2),.y3(y3),.s0(s0),.s1(s1),.I(I));
initial
begin
I=0;
s0=0;
s1=0;
#10
I=1;
s0=0;
s1=1;
#10
I=1;
s0=1;s1=0;
#10
I=0;
s0=1;s1=1;
#10
$stop;
end
endmodule
