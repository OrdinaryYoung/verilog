module full_adder(input A, B, Cin, output wire S, Cout);
  
  assign S = A ^ B ^ Cin;
  assign Cout = (A & B) | (Cin & (A ^ B));
  
endmodule

// 2-input (4 bit) ripple_carry_adder
module ripple_carry_adder(input [3:0] A, B, input Cin, output wire [3:0] S, output wire Cout);
  
  wire C0, C1, C2;
  
  full_adder fa0(A[0], B[0], Cin, S[0], C0);
  full_adder fa1(A[1], B[1], C0	, S[1], C1);
  full_adder fa2(A[2], B[2], C1	, S[2], C2);
  full_adder fa3(A[3], B[3], C2	, S[3], Cout);
  
endmodule