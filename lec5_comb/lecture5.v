`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 02:01:59 PM
// Design Name: 
// Module Name: lecture5
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


module lecture5(
    input A,
    input B,
    input S,
    output Y
    );
    
    wire outSB;
    wire notS;
    wire outnotSA;
    
    and(outSB,S,B);
    not(notS,S);
    and(outnotSA,notS,A);
    or(Y,outnotSA,outSB);
    
endmodule
