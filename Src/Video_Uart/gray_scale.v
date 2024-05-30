`timescale 1ns / 1ps

module gray_scale(
    input wire clk,
    input wire [11:0] pixel_data,
    output reg [11:0] data_out
    );
        
       reg [3:0] average;
    always @(posedge clk) begin 
        // Calculate the average value of the R, G, and B components
        average = (pixel_data[3:0] + {pixel_data[6:4], 1'b0} + pixel_data[11:8]) / 3;
        // Assign the average value to each component to make it grayscale
        data_out <= {average, average, average};
   end
endmodule
