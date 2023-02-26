`timescale 1ns / 1ps


module top_module(
    input logic i0,i1,i2,i3,CLK,rst,
    input logic [1:0]sel,
    output logic out_module
    );
    
    logic salida_0, salida_1, salida_2, salida_3;
    
    ff1 ff_1(.CLK(CLK), .rst(rst), .D(i0),.Q(salida_0));
    ff2 ff_2(.CLK(CLK), .rst(rst), .D(i1),.Q(salida_1));
    ff3 ff_3(.CLK(CLK), .rst(rst), .D(i2),.Q(salida_2));
    ff4 ff_4(.CLK(CLK), .rst(rst), .D(i3),.Q(salida_3));
    
    mux_four_one m1(.in0(salida_0),.in1(salida_1),.in2(salida_2),.in3(salida_3),.sel(sel),.out(out_module));
    
endmodule
