`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 11:09:23
// Design Name: 
// Module Name: tb_flipflop
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


module tb_flipflop;

    logic Q;
    logic nQ;
    logic D;
    logic rst;
    logic CLK;
    
    flipflop dut (
    
    .Q (Q),
    .nQ (nQ),
    .D (D),
    .rst (rst),
    .CLK (CLK)
  
    );
    
    logic CLK;


    initial begin
        CLK=0;
        end
        always begin
        #5
        CLK=~CLK;
    end 
    
    initial begin
        rst=0;
        D=1;
        #10
        rst=1;
        D=1;
        #10
        rst=0;
        D=0;
        #10
        rst=1;
        D=0;
    end   
        

    
endmodule
