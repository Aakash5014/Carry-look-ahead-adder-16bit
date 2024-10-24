`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 10:42:08
// Design Name: 
// Module Name: top
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


module top(a,b,cin,s,cout);
input[15:0]a,b;
input cin;
output cout;
output[15:0]s;
wire [15:0]s0,s1;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
//adders
cla4bit x1(a[3:0],b[3:0],cin,s[3:0],w1);
cla4bit x2(a[7:4],b[7:4],0,s0[3:0],w2);
cla4bit x3(a[7:4],b[7:4],1,s1[3:0],w3);
cla4bit x4(a[11:8],b[11:8],0,s0[7:4],w5);
cla4bit x5(a[11:8],b[11:8],1,s1[7:4],w6);
cla4bit x6(a[15:12],b[15:12],0,s0[11:8],w8);
cla4bit x7(a[15:12],b[15:12],1,s1[11:8],w9);
//mux
mux_2_1 y1(w2,w3,w1,w4);
mux_2_1 y2(s0[3:0],s1[3:0],w1,s[7:4]);
mux_2_1 y3(w5,w6,w4,w7);
mux_2_1 y4(s0[7:4],s1[7:4],w4,s[11:8]);
mux_2_1 y5(w8,w9,w7,cout);
mux_2_1 y6(s0[11:8],s1[11:8],w7,s[15:12]);

endmodule
