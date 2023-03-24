`include "halfAdder.v"

module half_adder_tb();

    reg a, b;
    wire s, c;

    half_adder_behavior_model G1 (s, c, a, b);

    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);

        $monitor (" S = %b, C = %b, A = %b, B = %b \n", s, c, a, b);
            a = 0; b = 0; #1;
            a = 1; b = 0; #1;
            a = 0; b = 1; #1;
            a = 1; b = 1; #1;
            $finish();
    end

endmodule