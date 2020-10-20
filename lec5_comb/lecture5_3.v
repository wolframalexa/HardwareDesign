`timescale 1ns / 1ps

module lecture5_3(
    A,
    B,
    S,
    Y
    );
    
    input [1:0]A;
    input [1:0]B;
    input [0:0]S;
    output [1:0]Y;
    reg [1:0]Y;
  
    always @ (A or B or S)
    begin
        if(S==0)
            Y=A;    
        else    
            Y=B;
    end 
endmodule
