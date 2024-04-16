`timescale 1ns / 1ps

module image_capture_rgb444(
    input wire clk,
    input wire rst,
    input wire vsync,
    input wire href,
    input wire pclk,
    input wire [7:0] data,
    output reg [15:0] pixel_data, // Use 16 bits to align data width, pad with zeros
    output reg pixel_valid,
    output reg frame_done
);

    // State definitions
    localparam IDLE = 2'b00,
               CAPTURE = 2'b01,
               LINE_END = 2'b10,
               FRAME_END = 2'b11;

    reg [1:0] state = IDLE;
    reg [7:0] byte_buffer;
    reg byte_received = 0; // Toggle flag for received bytes

    always @(posedge pclk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            pixel_data <= 0;
            pixel_valid <= 0;
            frame_done <= 0;
            byte_received <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (!vsync) begin
                        // Frame has started
                        state <= CAPTURE;
                        frame_done <= 0;
                    end
                end
                CAPTURE: begin
                    if (href) begin
                        // Valid data is being sent
                        if (!byte_received) begin
                            byte_buffer <= data;
                            byte_received <= 1;
                        end else begin
                            // Construct pixel_data by combining two bytes
                            pixel_data <= {byte_buffer[7:4], byte_buffer[3:0], data[7:4], data[3:0]};
                            pixel_valid <= 1;
                            byte_received <= 0;
                        end
                    end else begin
                        // HREF is low, line has ended
                        pixel_valid <= 0;
                        state <= LINE_END;
                    end
                end
                LINE_END: begin
                    if (vsync) begin
                        // VSYNC high, frame is ending
                        state <= FRAME_END;
                    end else if (href) begin
                        // New line starts before vsync
                        state <= CAPTURE;
                    end
                end
                FRAME_END: begin
                    frame_done <= 1;
                    if (!vsync) begin
                        // VSYNC went low, new frame starts
                        state <= IDLE;
                    end
                end
            endcase
        end
    end
endmodule

