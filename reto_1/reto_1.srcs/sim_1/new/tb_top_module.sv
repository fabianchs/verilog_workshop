`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 10:49:06
// Design Name: 
// Module Name: tb_top_module
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


module tb_top_module;

    logic i0;
    logic i1;
    logic i2;
    logic i3;
    logic [1:0]sel;
    logic CLK;
    logic rst;
    logic out_module;
    
    top_module dut(
    
    
    .i0 (i0),
    .i1 (i1),
    .i2 (i2),
    .i3 (i3),
    .sel (sel),
    .CLK (CLK),
    .rst (rst),
    .out_module(out_module)
    
    
    );
    

        always begin
        #5
        CLK=~CLK;
    end 
    /*
    always begin
        #5
        CLK=~CLK;
    end
    initial begin
        CLK=0;
    end
    */
        initial begin 
        CLK=0;
        rst=1;
        i0=1;
        i1=1;
        i2=1;
        i3=1;
        sel=0;
        #10
        rst=0;
        i0=1;
        i1=0;
        i2=1;
        i3=0;
        sel=1;
        #10
        i0=0;
        i1=0;
        i2=1;
        i3=0;
        sel=2;
        #10
        i0=0;
        i1=0;
        i2=0;
        i3=0;
        sel=3;
        #10
        i0=0;
        i1=0;
        i2=0;
        i3=1;
        sel=3;
        $finish;
    end   

   


endmodule
