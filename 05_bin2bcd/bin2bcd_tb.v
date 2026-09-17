module bin2bcd_tb;

    reg  [3:0] binary;
    wire [7:0] bcd;

    integer i;

    bin2bcd uut (
        .binary(binary),
        .bcd(bcd)
    );

    initial begin

        $dumpfile("bin2bcd_tb.vcd");
        $dumpvars(0, bin2bcd_tb);

        $monitor("Time=%0t | Binary=%b | BCD=%b",
                 $time, binary, bcd);

        for (i = 0; i < 16; i = i + 1) begin
            binary = i;
            #10;
        end

        $finish;

    end

endmodule