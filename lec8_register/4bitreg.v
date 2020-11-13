`timescale 1ns / 1ps

module lecture8_1(
    input Clk,
    input [3:0] D,
    input reset,
    input load,
    output reg [3:0] Q
    );
    
    always @(posedge Clk)
        if (reset)
        begin
            Q <= 4'b0;
        end else if (load)
        begin
            Q <= D;
        end
    
endmodule

