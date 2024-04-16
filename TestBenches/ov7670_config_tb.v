`timescale 1ns / 1ps

module ov7670_config_tb;

    // Inputs to the module
    reg clk;
    reg rst;
    wire sccb_done;  // This will simulate the completion signal from the SCCB master

    // Outputs from the module
    wire sccb_start;
    wire [7:0] sccb_addr;
    wire [7:0] sccb_data;

    // Instantiate the Unit Under Test (UUT)
    ov7670_config uut(
        .clk(clk),
        .rst(rst),
        .sccb_start(sccb_start),
        .sccb_addr(sccb_addr),
        .sccb_data(sccb_data),
        .sccb_done(sccb_done)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100 MHz clock
    end

    // Simulate SCCB transaction completion
    reg sccb_done_reg;
    assign sccb_done = sccb_done_reg;

    always @(posedge clk) begin
        if (uut.sccb_start) begin
            #3 sccb_done_reg = 1;  // Trigger a done pulse shortly after each configuration start
            #2 sccb_done_reg = 0;
        end
    end

    // Monitor outputs and internal state
    initial begin
        $monitor("Time=%t, sccb_start=%b, sccb_addr=%h, sccb_data=%h, state=%d",
                 $time, sccb_start, sccb_addr, sccb_data, uut.state);
    end

    // Test sequence
    initial begin
        // Reset the system
        rst = 1;
        #10 rst = 0;

        // Wait for the configuration process to complete
        wait(uut.state == uut.DONE);
        #20;

        // End simulation
        $finish;
    end

endmodule
