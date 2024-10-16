// Simple 2-to-1 multiplexer
// Y = A when S is 0; Y = B when S is 1

module mux2to1(input wire A, B, S, output wire Y);
  assign Y = S ? B : A;
  // assign Y = (~S & A) | (S & B);  // Multiplexer logic using gates
endmodule