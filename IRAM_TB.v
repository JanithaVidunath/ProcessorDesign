`timescale 1ns/1ps

module IRAM_TB ();
    reg clk, read;
    reg [23:0] addr_in;
    wire [23:0] ins_out;

    IRAM dut(.clk(clk), .read(read), .addr_in(addr_in),
    .ins_out(ins_out));

    //Clock
    always begin
        clk = 1; #10; clk = 0; #10;
    end

    //Test Case 01
    initial begin
        read = 1; addr_in = 24'd12;
        #50;
        read = 0; addr_in = 24'd12;
        #50;
        read = 1; addr_in = 24'd10;
        #50
        $finish;
    end

endmodule //IRAM_TB