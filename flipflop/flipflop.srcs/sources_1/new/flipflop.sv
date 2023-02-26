`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 10:57:17
// Design Name: 
// Module Name: flipflop
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


module flipflop(
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
