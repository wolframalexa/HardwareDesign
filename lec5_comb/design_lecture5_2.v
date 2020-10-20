`timescale 1ns / 1ps

module design_lecture5_2(
    A,
    B,
    S,
    Y
    );

input wire [1:0]A;
input wire [1:0]B;
input wire [0:0]S;
output wire [1:0]Y;
    
wire wireS;
wire wire1;
wire wire2;
wire wire3;
wire wire4;

assign #3 wire1 = A[0] & ~S;
assign #3 wire2 = B[0] & S;
assign #3 wire3 = A[1] & ~S;
assign #3 wire4 = B[1] & S;
assign #3 Y[0] = wire1 | wire2;
assign #3 Y[1] = wire3 | wire4;
endmodule