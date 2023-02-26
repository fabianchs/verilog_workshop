`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 10:41:18
// Design Name: 
// Module Name: tb_mux1
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


module tb_mux1;

    logic a;
    logic b;
    logic c;
    logic out;

    mux1 dut(
    
    .a (a),
    .b (b),
    .c (c),
    .out (out));
    
    initial begin 
        a= 0;
        c = 0;
        #10
        b = 1;
        c = 1;
        #10
        a=1;
        b=0;
        c=0;
        #10
        a=0;
        b=1;
        c=1;
        #10
        a=0;
        b=1;
        c=0;
        
    end   
    
    
endmodule
