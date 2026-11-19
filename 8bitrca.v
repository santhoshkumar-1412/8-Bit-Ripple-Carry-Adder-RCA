`timescale 1ns/1ps
module fa(s,cout,a,b,cin);
output s,cout;
input a,b,cin;
assign s=a^b^cin;
assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
module bit4_rca(s,cout,a,b,cin);
output [7:0]s;
output cout;
input [7:0]a,b;
input cin;
wire c1,c2,c3,c4,c5,c6,c7;
fa fa0(s[0],c1,a[0],b[0],cin);
fa fa1(s[1],c2,a[1],b[1],c1);
fa fa2(s[2],c3,a[2],b[2],c2);
fa fa3(s[3],c4,a[3],b[3],c3);
fa fa4(s[4],c5,a[4],b[4],c4);
fa fa5(s[5],c6,a[5],b[5],c5);
fa fa6(s[6],c7,a[6],b[6],c6);
fa fa7(s[7],cout,a[7],b[7],c7);
endmodule
