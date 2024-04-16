`timescale 1ns / 1ps

module vga_top_tb();

reg clk;
wire Hsynq, Vsynq;
wire [3:0] Red, Green, Blue;

// Instantiate the top module
vga_top uut (
    .clk(clk),
    .Hsynq(Hsynq),
    .Vsynq(Vsynq),
    .Red(Red),
    .Green(Green),
    .Blue(Blue)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Generate a 100MHz clock (period = 10ns)
end

// Test scenario
initial begin
    // Initialize simulation
    $dumpfile("vga_waveform.vcd");
    $dumpvars(0, vga_top_tb);

    // Run simulation for enough time to observe several frames
    #2000000;  // Simulation time: sufficient to see multiple frames

    // Finish simulation
    $finish;
end

endmodule
