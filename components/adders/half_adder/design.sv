// 2-input Half Adder
module half_adder(input wire A, B, output wire S, C);
  assign S = A ^ B;
  assign C = A & B;
endmodule
