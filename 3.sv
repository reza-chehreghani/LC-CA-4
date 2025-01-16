module D_flipflop_PRE_CLR(input D, CLK, PRE, CLR, output Q, Qb);
	wire i, j, k;
	SR_latch_2S2R SR1(.S0(k), .S1(PRE), .R0(CLK), .R1(CLR), .Qb(i)),
				  SR2(i, CLK, D, CLR, j, k),
				  SR3(i, PRE, j, CLR, Q, Qb);
endmodule