//Instruction Memory

module IRAM ( input clk, read, 
              input [23:0] addr_in, // FROM PC
              output [23:0] ins_out  // TO IR
);
    reg [23:0] iram [2**24-1:0];
    initial begin
//        iram[8'd10] = 24'd100;
//        iram[8'd11] = 24'd10;
//        iram[8'd12] = 24'd50;
//        iram[8'd13] = 24'd51;
//        iram[8'd13] = 24'd520;
//        iram[8'd14] = 24'd19;
         $readmemb("D:/Semester 5/Processor/CODES/opcodes.txt", iram);
    end
    assign ins_out = read ? iram[addr_in] : 24'dz;

endmodule //IRAM