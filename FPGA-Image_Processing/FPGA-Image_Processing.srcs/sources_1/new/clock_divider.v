`timescale 1ns / 1ps

module clock_divider(
    input wire clk,  // Assuming a 100MHz input clock
    output reg divided_clk = 0
);
    
integer counter_value = 0;
parameter div_value = 1;  // Set this to 1 for 50MHz, and further divide if needed

always @(posedge clk) begin
    if(counter_value == (div_value*2)) begin
        counter_value <= 0;
        divided_clk <= ~divided_clk;  // Toggle the output clock
    end else
        counter_value <= counter_value + 1;
end

endmodule
