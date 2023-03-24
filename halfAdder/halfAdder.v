// module half_adder_gate_level(s, c, a, b);

// input a, b;
// output s, c;
// xor (s, a, b);
// and (c, a, b);

// endmodule

// module half_adder_data_flow(s, c, a, b);

// input a, b;
// output s, c;

// assign s = (a ^ b);
// assign c = (a & b);

// endmodule

module half_adder_behavior_model(s, c, a, b);

input a, b;
output s, c;

always @ (a or b) begin
    s = (a ^ b);
    c = (a & b);
end

endmodule