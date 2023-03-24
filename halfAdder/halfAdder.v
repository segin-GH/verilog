module half_adder_gate_level(s, c, a, b);

input a, b;
output s, c;
xor (s, a, b);
and (c, a, b);


endmodule
