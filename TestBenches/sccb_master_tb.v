`timescale 1ns / 1ps

module sccb_master_tb;

reg clk = 0;
reg rst = 0;
reg start = 0;
reg [7:0] addr = 8'h42; // Device write address for OV7670
reg [7:0] data = 8'h55; // Example data byte
wire scl;
tri sda;

sccb_master uut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .addr(addr),
    .data(data),
    .scl(scl),
    .sda(sda)
);

always #5 clk = ~clk; // 100MHz clock

initial begin
    // Initial conditions
    rst = 1;
    #20 rst = 0; // Release reset
    #20 start = 1; // Start SCCB transaction
    #10 start = 0; // End of start pulse
end

// Monitor bus activity
initial begin
    $monitor("Time=%t scl=%b sda=%b state=%b", $time, scl, sda, uut.state);
end

// Simulate an external pull-up resistor on SDA and a slave device ACK
reg sda_pullup;
reg sda_slave;

assign sda = (sda_pullup && sda_slave) ? 1'b1 : 1'bz;

always @(negedge clk) begin
    // Simulate pull-up resistor behavior
    sda_pullup <= 1;
    // Simulate slave device behavior
    if (uut.state == sccb_master.STATE_ACK) begin
        // Slave pulls SDA low to acknowledge during the ACK phase
        sda_slave <= 0;
    end else begin
        // Release SDA line
        sda_slave <= 1;
    end
end

endmodule
