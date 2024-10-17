module test;
  
  reg A, B, Cin;
  wire S, Cout;
  
  full_adder uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
  
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1, test);
    
    A = 0; B = 0; Cin = 0; #5;
    A = 1; B = 0; Cin = 0; #5;
    A = 0; B = 1; Cin = 0; #5;
    A = 1; B = 1; Cin = 0; #5;
    A = 0; B = 0; Cin = 1; #5;
    A = 1; B = 0; Cin = 1; #5;
    A = 0; B = 1; Cin = 1; #5;
    A = 1; B = 1; Cin = 1; #5;
    
    $finish;
  end
endmodule
    