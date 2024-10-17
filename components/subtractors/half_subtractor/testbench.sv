module test;
  
  reg A, B;
  wire D, Bout;
  
  half_subtractor uut(.A(A), .B(B), .D(D), .Bout(Bout));
  
  initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(1, test);
    
    A = 0; B = 0; #5;
    A = 1; B = 0; #5;
    A = 0; B = 1; #5;
    A = 1; B = 1; #5;
    
    $finish;
  end
endmodule