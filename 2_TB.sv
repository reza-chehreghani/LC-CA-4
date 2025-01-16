`timescale 1ns/1ns
module TB_2();
	logic DD = 1, CLOCK = 0;
	wire QQ, QQb;
	D_flipflop UUT(DD, CLOCK, QQ, QQb);
	initial begin
	#100 CLOCK = 1;
	#100 DD = 0;
	#100 CLOCK = 0;
	#100 DD = 1;
	#100 DD = 0;
	#100 CLOCK = 1;

	#1000
	// t_setup
	#100 CLOCK = 0;
	#100 DD = 1;
	#100 CLOCK = 1;
	#100 CLOCK = 0;
	#100 DD = 0;
	#4   CLOCK = 1;

	#996
	// t_hold
	#100 CLOCK = 0;
	#100 DD = 1;
	#100 CLOCK = 1;
	#100 CLOCK = 0;
	#100 DD = 0;
	#100 CLOCK = 1;
	#4   DD = 1;

	#996 $stop;
	end
endmodule
