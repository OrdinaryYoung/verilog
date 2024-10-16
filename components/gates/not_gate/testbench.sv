module test;
  
  reg A;
  wire Y;
  
  not_gate uut(.A(A), .Y(Y));
  
  initial begin
    $dumpfile("or_gate.vcd");
    $dumpvars(1, test);
    
    A = 0; #10;
    A = 1; #5;
    A = 0; #20;
    
    $finish;
  end
endmodule