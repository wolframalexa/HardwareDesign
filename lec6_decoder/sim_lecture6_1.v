`timescale 1ns / 1ps

module sim_lecture6_1;
reg [2:0] x;
wire [7:0] y;
integer k;

lecture6_1 ttul(.x(x), .D(y));

initial
begin
    x = 0;
    for (k=0; k < 8; k=k+1)
        #5 x=k;
        #10;
    end
endmodule