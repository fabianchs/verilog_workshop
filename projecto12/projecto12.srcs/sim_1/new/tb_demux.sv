`timescale 1ns / 1ps

module tb_demux;

    logic entrada;
    logic seleccion;
    logic s1;
    logic s2;
    
    demux dut(//device under test DUT
        .entrada_i (entrada),
        .seleccion (seleccion),
        .s1        (s1),
        .s2        (s2));
    
    initial begin 
        entrada = 0;
        seleccion = 0;
        #10
        entrada = 1;
        #10
        entrada = 1;
        seleccion = 1;
    end
  
endmodule
