module test;
  
  reg A, B, S;
  wire Y;
  
  mux2to1 uut(.A(A), .B(B), .S(S), .Y(Y));
  
  initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, test);
    
    A = 0; B = 0; S = 0; #10;
    A = 1; B = 0; S = 0; #10;
    A = 0; B = 1; S = 0; #10;
    A = 1; B = 1; S = 0; #10;
    A = 0; B = 0; S = 1; #10;
    A = 1; B = 0; S = 1; #10;
    A = 0; B = 1; S = 1; #10;
    A = 1; B = 1; S = 1; #10;
    
    $finish;
  end
endmodule