module test;
  
  reg A, B, Bin;
  wire D, Bout;
  
  full_subtractor uut(.A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));
  
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(1, test);
    
    A = 0; B = 0; Bin = 0; #5;
    A = 1; B = 0; Bin = 0; #5;
    A = 1; B = 0; Bin = 1; #5;
    A = 1; B = 1; Bin = 1; #5;
    
    $finish;
  end
endmodule