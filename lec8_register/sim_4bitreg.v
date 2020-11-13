`timescale 1ns / 1ps

module sim_lecture8_1;
    reg Clk;
    reg [3:0] D;
    reg reset;
    reg load;
    
    wire [3:0] Q;

    integer i;
    
    lecture8_1 ddut( .Clk(Clk), .reset(reset), .load(load), .D(D), .Q(Q));
    
    always #1 Clk = !Clk;
    
    initial
        begin
           
            // when reset = 1, regardless of the value of load, Q should be 0
            // expected behavior: D = 0 always, in both of the following blocks
            Clk = 0;
            reset = 1;
            load = 1;
            D = 0;
            for (i=0;i<16;i=i+1)
                #5 D = i;
            #10;

            // when reset and load are 0, retain past value of Q
            // expected behavior: Q stays the same
            Clk = 0;
            reset = 0;
            load = 0;
            D = 0;
            for (i=0;i<16;i=i+1)
                #5 D = i;
            #10;
            
            Clk = 0;
            reset = 1;
            load = 0;
            D = 0;
            for (i=0;i<16;i=i+1)
                #5 D = i;
            #10;
                        
            // when reset = 0 and load = 1, load the value of D into Q
            // expected behavior: old value of D becomes new value of Q
            Clk = 0;
            reset = 0;
            load = 1;
            D = 0;
            for (i=0;i<16;i=i+1)
                #5 D = i;
            #10;
            end
endmodule

