`timescale 1ns / 1ps

module mux_four_one(
    input logic in0, in1, in2, in3,[1:0]sel, CLK,
    output logic out
    );
    
    always_comb begin
    
        if (sel==0) begin 
            out=in0;
        end else if (sel==1)begin
            out=in1;
        end else if (sel==2)begin
            out=in2;
        end else if (sel==3)begin
            out=in3;
        end else begin
            out=in0;
        end
    
    end
    
endmodule