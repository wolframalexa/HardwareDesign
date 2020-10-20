`timescale 1ns / 1ps

module decoder(x,D);
    input wire [2:0]x;
    output wire [7:0]D;
    
    assign #2 D[0] = ~x[0] & ~x[1] & ~x[2];
    assign #2 D[1] = ~x[0] & ~x[1] & x[2];
    assign #2 D[2] = ~x[0] & x[1] & ~x[2];
    assign #2 D[3] = ~x[0] & x[1] & x[2];
    assign #2 D[4] = x[0] & ~x[1] & ~x[2];
    assign #2 D[5] = x[0] & ~x[1] & x[2];
    assign #2 D[6] = x[0] & x[1] & ~x[2];
    assign #2 D[7] = x[0] & x[1] & x[2];
endmodule



module lecture6_2(x,g,y);
    input wire [2:0] x;
    input wire [2:0] g;
    output wire [7:0] y;
    
    wire [7:0]temp;
    wire [0:0]en;
    
    decoder inst_1 (x,temp);
    assign #2 en = (g[2] & ~g[1] & ~g[0]);
    assign #2 y[0] = ~(en & temp[0]);
    assign #2 y[1] = ~(en & temp[1]);
    assign #2 y[2] = ~(en & temp[2]);
    assign #2 y[3] = ~(en & temp[3]);
    assign #2 y[4] = ~(en & temp[4]);
    assign #2 y[5] = ~(en & temp[5]);
    assign #2 y[6] = ~(en & temp[6]);
    assign #2 y[7] = ~(en & temp[7]);
    
    
endmodule
