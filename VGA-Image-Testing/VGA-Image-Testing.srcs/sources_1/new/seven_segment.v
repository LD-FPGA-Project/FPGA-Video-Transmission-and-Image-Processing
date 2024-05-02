//7 segment display module for verifying camera input/output

module seven_segment (
    output [6:0] seg,
    output digit_sel
);

assign digit_sel = 0;
assign seg = 7'b1111001;

endmodule

