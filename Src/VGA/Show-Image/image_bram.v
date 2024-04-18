`timescale 1ns / 1ps
`default_nettype none

module image_bram(
    input wire [16:0] addr,  // Address input
    input wire clk,          // Clock input
    output reg [11:0] data_out  // Data output
);

    // Declare the block RAM
    reg [11:0] bram[0:76799];  // Memory array for the image data
    
    // Initialize the memory from a hex file at simulation start
   initial begin
    $readmemh("image_data.hex", bram);
    if (bram[0] === 12'hxxx)
        $display("Error: Memory initialization failed.");
    else
        $display("Memory initialization successful. First value: %h", bram[0]);
    end


    // Output the memory contents at the rising edge of the clock
    always @(posedge clk) begin
        data_out <= bram[addr];
    end

endmodule
