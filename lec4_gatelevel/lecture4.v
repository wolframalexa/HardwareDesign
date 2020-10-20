`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2020 02:42:57 PM
// Design Name: 
// Module Name: lecture4
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

// begin module
module lecture4
    (A,
     B,
     C,
     D);

// Define port functionality and external wires    
input wire [0:0]A;
input wire [0:0]B;
input wire [0:0]C;
output wire [0:0]D;

// Define internal wires
wire wire1;

// Logic gates
or(wire1,A,B);
and(D,C,wire1);

endmodule //end module
