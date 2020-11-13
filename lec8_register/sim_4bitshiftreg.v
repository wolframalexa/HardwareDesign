`timescale 1ns / 1ps

module sim_lecture8_2;
    reg Clk;
    reg load;
    reg ShiftIn;
    reg ShiftEn;
    reg [3:0] ParallelIn;
    
    wire [3:0] RegContent;
    
    integer i;
    
    lecture8_2 dut(.Clk(Clk), .ShiftIn(ShiftIn), .ShiftEn(ShiftEn), .ParallelIn(ParallelIn), .load(load), .RegContent(RegContent));
    
    always #1 Clk = !Clk;

    initial 
        begin 
            // when load = 1, regardless of the value of ShiftEn, replace current values in register by the values in parallelIn
            // expected behavior: Q = D for the following two blocks
            Clk = 0; 
            load = 1;
            ShiftEn = 0;
            ShiftIn = 0;
            for (i=0;i<16;i=i+1) 
                #5 ParallelIn = i; 
            #10;
            
            Clk = 0; 
            load = 1;
            ShiftEn = 1;
            ShiftIn = 0;
            for (i=0;i<16;i=i+1) 
                #5 ParallelIn = i; 
            #10;
            
            // when load = 0 and ShiftEn = 0, do nothing
            // expected behavior: RegContent remains the same regardless of D and ParallelIn 
            Clk = 0;  
            load = 0; 
            ShiftIn = 0;
            ShiftEn = 0; 
            for (i=0;i<16;i=i+1) 
                #5 ShiftIn = i; 
            #10;
            
            // when load = 0 and ShiftEn = 1, shift 1 bit from ShiftIn and shift others left
            // expected behavior: RegContent increases with shifts
            Clk = 0; 
            load = 0;
            ShiftIn = 0;
            ShiftEn = 1;
            for (i=0;i<4;i=i+1) 
                #5 ShiftIn = 1; 
            #10;
            end 
endmodule

