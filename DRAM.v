//Data Memory

module DRAM ( input clk, write, read, reset,
              input [23:0] addr_in,
              input [23:0] data_in, //FROM MDR
              output [23:0] data_out //TO B BUS
);
    reg [23:0] dram [270:0];
    integer i;
    reg [23:0] out;

    initial begin
        $readmemb("D:/Semester 5/Processor/CODES/bin_img.txt", dram); 
//        f = $fopen("D:/Semester 5/Processor/CODES/output.txt","w");
//        outfile = $fopen("D:/Semester 5/Processor/CODES/resized.txt","w");
    end 

    always @(posedge clk ) begin
        if (write) begin
            dram[addr_in] <= data_in;
        end

        if (reset) begin
            for (i=0; i < 255; i = i + 1) begin
                dram[i] <= 24'b0;
            end
        end 
        
        if (addr_in == 24'd65534) begin
           $writememb("D:/Semester 5/Processor/CODES/memory_hex1.txt", dram, 0, 65536);  
//            for (j = 0; j<16384; j=j+1) begin
//                $fdisplay(outfile,"%d",dram[j]);
//            end
            
        end    
    end 
//    $fclose(outfile);
    assign data_out = read ? dram[addr_in] : 24'dz ;

endmodule //DRAM