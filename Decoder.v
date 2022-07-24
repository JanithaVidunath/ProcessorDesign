//Decoder
module Decoder ( input [3:0] reg_addr,
                 output [13:0] out
);

  reg [13:0] register;

  always @(*) begin
    case (reg_addr) 
            4'b0001: register = 14'b10000000000000; //H
			4'b0010: register = 14'b01000000000000; //W
			4'b0011: register = 14'b00100000000000; //K
			4'b0100: register = 14'b00010000000000; //COUNT
			4'b0101: register = 14'b00001000000000; //X
			4'b0110: register = 14'b00000100000000; //J
			4'b0111: register = 14'b00000010000000; //L
			4'b1000: register = 14'b00000001000000; //CENTERP
			4'b1001: register = 14'b00000000100000; //T
			4'b1010: register = 14'b00000000010000; //AC
			4'b1011: register = 14'b00000000001000; //PC
			4'b1100: register = 14'b00000000000100; //MDR
            4'b1101: register = 14'b00000000000010; //MAR
            4'b1110: register = 14'b00000000000001; //IR
			default: register = 14'b00000000000000; //NONE
    endcase   
  end
  
    assign out = register;

endmodule //Decoder
