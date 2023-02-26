`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 10:28:47
// Design Name: 
// Module Name: mux1
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


module mux1(
    input logic a,b,c,
    output logic out
    );
    
    logic var_uso_interno;
    
    always_comb begin
    
        if (!c) begin
        out=a; 
        end else begin
        out=b; end
    end
endmodule
