`timescale 1ns / 1ps  

module mux(A, B, S, Y); 
    input wire [1:0] A; 
    input wire [1:0] B; 
    input wire [0:0] S; 
    output wire [1:0] Y; 

    wire notS; 
    wire wire1; 
    wire wire2; 
    wire wire3; 
    wire wire4; 

    not(notS,S); 
    and(wire1,A[0],notS); 
    and(wire2,B[0],S); 
    and(wire3,A[1],notS); 
    and(wire4,B[1],S); 
    or(Y[0],wire1,wire2); 
    or(Y[1],wire3,wire4); 
endmodule 

module part_four_mux(A, B, C, S1, S2, Y2); 
    input wire [1:0] A, B, C; 
    input wire [0:0] S1, S2; 
    output wire [1:0] Y2; 


    wire [1:0] Y1; 
    mux inst_1 (A, B, S1, Y1); 
    mux inst_2 (Y1, C, S2, Y2); 

endmodule 