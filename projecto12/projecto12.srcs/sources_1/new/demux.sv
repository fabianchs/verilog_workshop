`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 09:47:19
// Design Name: 
// Module Name: demux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux(
//entradas o salidas del mòdulo
    input logic entrada_i,
    input logic seleccion,
    output logic s1,
    output logic s2    //1,0,X,Y valores que puede tener 
    );
    
    assign s1 = seleccion ? 1'b0: entrada_i; //si es 1 se cumple la condición
    assign s2 = seleccion ? entrada_i : 1'b0; //asgina a una variable otro valor, algo es igual a tal cosa
    //siempre que tenemos varias salidas hay que tomarlas en cuenta
    //sino crearíamos latches
endmodule
