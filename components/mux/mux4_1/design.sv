// Simple 4-to-1 multiplexer
module mux4to1(input wire A, B, C, D, S0, S1 , output Y);
  assign Y = 	(~S0 & ~S1) ? A :
  				(S0 & ~S1) ? B :
  				(~S0 & S1) ? C : D;
endmodule