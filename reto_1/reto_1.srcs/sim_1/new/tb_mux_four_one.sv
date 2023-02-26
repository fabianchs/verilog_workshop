`timescale 1ns / 1ps


module tb_mux_four_one;

    logic in0;
    logic in1;
    logic in2;
    logic in3;
    logic [1:0]sel;
    logic out;


    mux_four_one dut(
    
    .in0 (in0),
    .in1 (in1),
    .in2 (in2),
    .in3 (in3),
    .sel (sel),
    .out (out));
    
    initial begin 
        in0=1;
        in1=1;
        in2=1;
        in3=1;
        sel=0;
        #10
        in0=1;
        in1=0;
        in2=1;
        in3=0;
        sel=1;
        #10
        in0=0;
        in1=0;
        in2=1;
        in3=0;
        sel=2;
        #10
        in0=0;
        in1=0;
        in2=0;
        in3=0;
        sel=3;
        #10
        in0=0;
        in1=0;
        in2=0;
        in3=1;
        sel=3;
        $finish;
    end   
    
    
endmodule
