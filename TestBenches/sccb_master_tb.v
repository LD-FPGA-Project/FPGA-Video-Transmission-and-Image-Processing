`timescale 1ns / 1ps

module sccb_master_tb;

reg clk = 0;
reg rst = 0;
reg start = 0;
reg [7:0] addr = 8'h42; 
reg [7:0] data = 8'h55; wire scl;
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

always #5 clk = ~clk;

initial begin
       rst = 1;
    #20 rst = 0;
    #20 start = 1; 
    #10 start = 0; 
end


initial begin
    $monitor("Time=%t scl=%b sda=%b state=%b", $time, scl, sda, uut.state);
end

reg sda_pullup;
reg sda_slave;

assign sda = (sda_pullup && sda_slave) ? 1'b1 : 1'bz;

always @(negedge clk) begin
      sda_pullup <= 1;
       if (uut.state == sccb_master.STATE_ACK) begin
               sda_slave <= 0;
    end else begin
        // Release SDA line
        sda_slave <= 1;
    end
end

endmodule
