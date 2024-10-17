module test;
  
  reg A, B, C, D, S0, S1;
  wire Y;
  
  mux4to1 uut(.A(A), .B(B), .C(C), .D(D), .S0(S0), .S1(S1), .Y(Y));
  
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(1, test);
    
    A = 0; B = 1; C = 1; D = 0; S0 = 0; S1 = 0; #5;
    A = 0; B = 1; C = 1; D = 0; S0 = 1; S1 = 0; #5;
    A = 0; B = 1; C = 1; D = 0; S0 = 0; S1 = 1; #5;
    A = 0; B = 1; C = 1; D = 0; S0 = 1; S1 = 1; #5;
    A = 1; B = 1; C = 0; D = 1; S0 = 0; S1 = 1; #5;
    
    $finish;
  end
endmodule