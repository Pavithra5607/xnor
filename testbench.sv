module tb_xnor_gate;

    reg a, b;
    wire y;

    xnor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
      $dumpfile("xnor_gate.vcd");
      $dumpvars;
        $display("A B | Y");
        $display("---------");

        a = 0; b = 0; #10 $display("%b %b | %b", a, b, y);
        a = 0; b = 1; #10 $display("%b %b | %b", a, b, y);
        a = 1; b = 0; #10 $display("%b %b | %b", a, b, y);
        a = 1; b = 1; #10 $display("%b %b | %b", a, b, y);

        $finish;
    end

endmodule