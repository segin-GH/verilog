`include "halfAdder.v"

module half_adder_tb();

    reg a, b;
    wire s, c;

    half_adder_gate_level G1 (s, c, a, b);

    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);
            a = 0; b = 0; #1;
            a = 1; b = 0; #1;
            a = 0; b = 1; #1;
            a = 1; b = 1; #1;
            $finish();
    end

endmodule