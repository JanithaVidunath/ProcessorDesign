`timescale 1ns/1ps

module DRAM_TB ();
    reg clk, write, read, reset;
    reg [23:0] addr_in;
    reg [23:0] data_in;
    wire [23:0] data_out;

    DRAM dut(.clk(clk), .write(write), .read(read), .reset(reset),
    .addr_in(addr_in), .data_in(data_in), .data_out(data_out));

    //Clock
    always begin
        clk = 1; #10; clk = 0; #10;
    end

    //Test Case 01
    initial begin
        write = 1; read = 0; reset = 0; data_in = 24'd100; addr_in = 24'd100;
        #50;
        write = 0; read = 1; reset = 0; addr_in = 24'd100;
        #50;
        write = 0; read = 0; reset = 1;
        #50;
        $finish;
    end

endmodule //DRAM_TB
