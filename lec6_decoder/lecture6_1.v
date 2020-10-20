`timescale 1ns / 1ps

module lecture6_1(
    input wire[2:0]x,
    output wire [7:0]D
    );
    
assign #2 D[0] = ~x[0] & ~x[1] & ~x[2];
assign #2 D[1] = ~x[0] & ~x[1] & x[2];
assign #2 D[2] = ~x[0] & x[1] & ~x[2];
assign #2 D[3] = ~x[0] & x[1] & x[2];
assign #2 D[4] = x[0] & ~x[1] & ~x[2];
assign #2 D[5] = x[0] & ~x[1] & x[2];
assign #2 D[6] = x[0] & x[1] & ~x[2];
assign #2 D[7] = x[0] & x[1] & x[2];

endmodule
