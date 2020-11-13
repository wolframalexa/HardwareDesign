`timescale 1ns / 1ps

module fulladder(A,B,Cin,S,Cout);
    input A, B, Cin;
    output S;
    output Cout;
    
    assign S = A ^ B ^ Cin;  
    assign Cout = A & B + Cin & (A ^ B);
endmodule

module halfadder(A,B, S, Cout);
    input A,B;
    output S, Cout;
    
    assign S = A ^ B;
    assign Cout = A & B;
    
endmodule

module three_bit_mult(
    input [2:0] A,
    input [2:0] B,
    output [5:0] Y
    );
    
    // last digit
    wire A0B0 = A[0] & B[0];
    
    // 5th digit
    wire A1B0 = A[1] & B[0];
    wire A0B1 = A[0] & B[1];
    wire dig5;
    
    halfadder ha5(A1B0, A0B1, dig5, cout5);
    
    // 4th digit
    wire A2B0 = A[2] & B[0];
    wire A1B1 = A[1] & B[1];
    wire int4;
    wire cout4ha;
    wire cout4fa;
    
    halfadder ha4(A2B0, A1B1, int4, cout4ha);
    wire A0B2 = A[0] & B[2];
    fulladder fa4(int4, A0B2, cout5,dig4,cout4fa);
    
    // 3rd digit
    wire A2B1 = A[2] & B[1];
    wire A1B2 = A[1] & B[2];
    wire int3;
    wire cout3fa;
    
    fulladder fa3(A2B1, A1B2,cout4ha,int3,cout3fa);
    
    wire cout3ha;
    halfadder ha3(int,cout4fa,dig3,cout3ha);
    
    // 2nd digit
    wire A2B2 = A[2] & B[2];
    wire dig2;
    wire dig1;
    
    fulladder fa2(A2B2, cout3ha, cout3fa, dig2, dig1);
    
    assign Y = {dig1, dig2, dig3, dig4, dig5, A0B0};
endmodule

