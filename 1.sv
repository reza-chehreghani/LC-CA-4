`timescale 1ns/1ns
module SR_latch(input S, R, output Q, Qb);
	nand #8 N1(Q, Qb, S), N2(Qb, Q, R);
endmodule


module SR_latch_2S(input S0, S1, R, output Q, Qb);
	nand #12 N1(Q, Qb, S0, S1);
	nand #8 N2(Qb, Q, R);
endmodule

module SR_latch_2S2R(input S0, S1, R0, R1, output Q, Qb);
	nand #12 N1(Q, Qb, S0, S1), N2(Qb, Q, R0, R1);
endmodule