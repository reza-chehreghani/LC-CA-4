module D_flipflop(input D, CLK, output Q, Qb);
	wire i, j, k;
	SR_latch SR1(.S(k), .R(CLK), .Qb(i)), SR3(i, j, Q, Qb);
	SR_latch_2S SR2(i, CLK, D, j, k);
endmodule
