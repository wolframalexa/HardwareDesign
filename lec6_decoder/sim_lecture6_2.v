`timescale 1ns / 1ps

module sim_lecture6_2();
    reg [2:0] x;
    reg [2:0] g;
    wire [7:0] y;
    integer k;
    
    lecture6_2 DUT (.g(g), .x(x), .y(y));
    
    initial
    begin
    x = 0; g = 3;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    x = 0; g = 5;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    x = 0; g = 2;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    x = 0; g = 4;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    end
endmodule