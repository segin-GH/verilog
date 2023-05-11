# Verilog
## Getting Statred

Install a compiler

```
sudo apt-get install iverilog
```
Install a  wave viewer

```
sudo apt-get install gtkwave
```

## Compiling the code

### First write you *.v file

```v

module and_gate(input a, input b, output c);

    assign c = a & b;

endmodule

```

### Then write you *_tb.v

```v
`include "and.v"

module and_tb();

    reg a, b;
    wire out;

    and_gate G1(a, b, out);

    initial begin

    $dumpfile("and_tb.vcd");
    $dumpvars(0, and_tb);

        a = 0; b =0; #10;
        a = 1; b =0; #10;
        a = 0; b =1; #10;
        a = 1; b =1; #10;
        $finish();
    end

endmodule
```

### Then to complie

```
iverilog -o <name of the ouput file> <name of you tb file>
```
### Then to get gtkwave formate

```
vvp <name of the ouput file>
```
### Then to run in gtkwave

```
gtkwave <run the file called *.vcd>
```
