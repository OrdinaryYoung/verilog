module test;
  
  reg A, B;
  wire S, C;
  
  half_adder uut(.A(A), .B(B), .S(S), .C(C));
  
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(1, test);
    
    A = 0; B = 0; #5;
    A = 1; B = 0; #5;
    A = 0; B = 1; #5;
    A = 1; B = 1; #5;
    
    $finish;
  end
endmodule
    