`timescale 1ns / 1ps

module image_capture_rgb444_tb;

    // Inputs
    reg clk;
    reg rst;
    reg vsync;
    reg href;
    reg pclk;
    reg [7:0] data;

    // Outputs
    wire [15:0] pixel_data;
    wire pixel_valid;
    wire frame_done;

    // Instantiate the Unit Under Test (UUT)
    image_capture_rgb444 uut (
        .clk(clk),
        .rst(rst),
        .vsync(vsync),
        .href(href),
        .pclk(pclk),
        .data(data),
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .frame_done(frame_done)
    );

    // Clock generation
    always #5 clk = ~clk;  // 100 MHz clock

    // PCLK generation
    always #10 pclk = ~pclk;  // 50 MHz clock, typically half the system clock

    // Test data generation
    task send_pixel;
        input [7:0] byte1;
        input [7:0] byte2;
        begin
            data = byte1;
            @(posedge pclk);  // Wait for pixel clock edge
            data = byte2;
            @(posedge pclk);  // Wait for next pixel clock edge
        end
    endtask

    // Test sequence
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        vsync = 0;
        href = 0;
        pclk = 0;
        data = 0;

        // Wait for global reset
        #100;
        rst = 0;

        // Begin a frame
        #100;
        vsync = 1;  // Start of frame
        #10;
        vsync = 0;

        // Send a line of pixels
        href = 1;
        send_pixel(8'hF0, 8'h0F);  // First pixel
        send_pixel(8'hAA, 8'h55);  // Second pixel
        href = 0;

        // End of frame
        #20;
        vsync = 1;  // Indicate frame end
        #10;
        vsync = 0;

        // Additional frames or lines can be simulated as needed

        // Finish simulation
        #500;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%t: Pixel Data=%h, Pixel Valid=%b, Frame Done=%b",
                 $time, pixel_data, pixel_valid, frame_done);
    end

endmodule
