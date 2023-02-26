`timescale 1ns / 1ps
module ff2(
    input logic D, rst, CLK,
    output logic Q,nQ
    );
    
    always_ff @(posedge CLK, posedge rst) begin
    
        if (rst) begin 
            Q=0;
            nQ=1;
        end else begin
            Q=D;
            nQ=~D;
        end
    
    end
    
    
endmodule
