// 2-input Ripple Borrow Subtractor;
module full_subtractor(input A, B, Bin, output D, Bout);
  
  assign D = A ^ B ^ Bin;
  assign Bout = (~A & B) | Bin & (~A ^ B);
  
endmodule


module ripple_borrow_subtractor(input [3:0] A, B, input Bin, output [3:0] D, output Bout);
  
  wire B0, B1, B2;
  
  full_subtractor fs0(A[0], B[0], Bin, D[0], B0);
  full_subtractor fs1(A[1], B[1], B0, D[1], B1);
  full_subtractor fs2(A[2], B[2], B1, D[2], B2);
  full_subtractor fs3(A[3], B[3], B2, D[3], Bout);
  
endmodule