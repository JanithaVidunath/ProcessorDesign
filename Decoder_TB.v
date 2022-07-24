`timescale 1ns/1ps

module Decoder_TB ();
    reg [3:0] reg_addr;
    wire [13:0] out;

    Decoder dut(.reg_addr(reg_addr), .out(out));

    //Test Case 01
    initial begin
        reg_addr = 4'd1;
        #50;
        reg_addr = 4'd2;
        #50;
        reg_addr = 4'd3;
        #50;
        reg_addr = 4'd4;
        #50;
        reg_addr = 4'd5;
        #50;
        reg_addr = 4'd6;
        #50;
        reg_addr = 4'd7;
        #50;
        reg_addr = 4'd8;
        #50;
        reg_addr = 4'd9;
        #50;
        reg_addr = 4'd10;
        #50;
        reg_addr = 4'd11;
        #50;
        reg_addr = 4'd12;
        #50;
        reg_addr = 4'd13;
        #50;
        reg_addr = 4'd14;
        #50;
        reg_addr = 4'd0;
        #50;
        $finish;
    end

endmodule //Decoder_TB