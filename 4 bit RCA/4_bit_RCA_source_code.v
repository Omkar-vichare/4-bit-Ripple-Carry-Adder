`timescale 1ns / 1ps

module FA(S,co,A,B,cin);
input A,B,cin; 
output S,co;
wire wire1,wire2,wire3;
xor xor1(S,A,B,cin);
and and1(wire1,A,B);
and and2(wire2,B,cin);
and and3(wire3,A,cin);
or or1(co,wire1,wire2,wire3);
endmodule

module RCA(s,cout,a,b,ci);
input [3:0]a,b;
input ci;
output [3:0]s;
output cout;
wire [3:0]w;

FA  FA_0(s[0],w[0],a[0],b[0],ci);
FA  FA_1(s[1],w[1],a[1],b[1],w[0]);
FA  FA_2(s[2],w[2],a[2],b[2],w[1]);
FA  FA_3(s[3],cout,a[3],b[3],w[2]);

endmodule
