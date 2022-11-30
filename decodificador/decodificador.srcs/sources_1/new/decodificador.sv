`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 11:25:32
// Design Name: 
// Module Name: decodificador
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


`timescale 1ns / 1ps


module decodificador(

    input   logic  [ 7 : 0 ]  codigo_i,
    output  logic  [ 7 : 0 ]  led_o);

    always_comb

    begin
        case (codigo_i)                            

            3'b000  : led_o = 8'b0000_0000;  
            3'b001  : led_o = 8'b0000_0001;
            3'b010  : led_o = 8'b0000_0011;
            3'b011  : led_o = 8'b0000_0111;
            3'b100  : led_o = 8'b0000_1111;
            3'b101  : led_o = 8'b0001_1111;
            3'b110  : led_o = 8'b0011_1111;  
            3'b111  : led_o = 8'b0111_1111;

            default : led_o = 8'b1010_1010;    

        endcase                                     

    end

    

endmodule
