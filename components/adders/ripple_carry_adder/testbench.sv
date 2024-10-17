module test_rca;
  
  reg [3: 0] A, B;
  reg Cin;
  wire [3:0] S;
  wire Cout;
  
  ripple_carry_adder rca(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
  
  initial begin
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(1, test_rca);
    
    A = 4'b0110 ; B = 4'b0001 ; Cin = 1; #10; //S is 1000 (8) Cout is 0
    A = 4'b0010 ; B = 4'b1111 ; Cin = 0; #10; //S is 0001 (1) Cout is 1
    A = 4'b1010 ; B = 4'b0011 ; Cin = 0; #10; //S is 1101 (D) Cout is 0
    A = 4'b0000 ; B = 4'b1010 ; Cin = 1; #10; //S is 1010 (B) Cout is 0
    
    $finish;
  end
  
endmodule