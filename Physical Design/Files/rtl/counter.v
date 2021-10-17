`timescale 1ns / 1ps

module counter(clk, reset, Q0, Q1, Q2);
    parameter N = 5;
    parameter WIDTH = 2;
    input clk;
    input reset;
    reg [WIDTH:0] y;
    output reg Q0, Q1, Q2;

    initial
    y = 0;
    
    always @ (negedge clk)
    begin
        if (reset)
            y <= 0;   
        else if (y==N-1)
            y <= 0;           
        else 
            y <= y+1;        
    end
    always @ (y)
    begin
        Q0 <= y[0];
        Q1 <= y[1];
        Q2 <= y[2];
    end
endmodule
