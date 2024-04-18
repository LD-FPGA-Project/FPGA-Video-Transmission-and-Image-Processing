`timescale 1ns / 1ps

module tb_image_bram();

    // Signals for interfacing with image_bram
    reg [16:0] addr;
    reg clk;
    wire [11:0] data_out;

    // Instantiate the image_bram module
    image_bram uut(
        .addr(addr),
        .clk(clk),
        .data_out(data_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 50 MHz clock frequency
    end

    // Initialize and increment address to read through memory
    initial begin
        addr = 0;
        repeat (76800) begin  // For each address in the memory
            @(posedge clk);
            addr = addr + 1;
        end
        @(posedge clk);
        $finish;  // End simulation
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %t, Address = %h, Data Out = %h", $time, addr, data_out);
    end

endmodule
