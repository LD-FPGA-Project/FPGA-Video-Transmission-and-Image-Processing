`timescale 1ns / 1ps

module tb_blk_mem_gen_0;

reg clk;
reg [16:0] address;
wire [11:0] data_out;

blk_mem_gen_0 uut (
    .clka(clk),
    .addra(address),
    .douta(data_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100 MHz Clock
end


initial begin
    address = 0;
    repeat (76800) begin
        @ (posedge clk);
        address = address + 1;
    end
    $finish;
end

initial begin
    $monitor("At time %t, Address %h, Data %h", $time, address, data_out);
end

endmodule
