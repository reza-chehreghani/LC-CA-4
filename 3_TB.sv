`timescale 1ns/1ns
module TB_3();
	logic DD = 0, CLOCK = 0, PRESET = 0, CLEAR = 1;
	wire QQ, QQb;
	D_flipflop_PRE_CLR UUT(DD, CLOCK, PRESET, CLEAR, QQ, QQb);
	initial begin
	#100 PRESET = 1;
	#100 CLOCK = 1;
	#100 CLOCK = 0;
	#100 DD = 1;
	#100 CLOCK = 1;
	#100 CLEAR = 0;

	#1000
	// preset or clear are active
	#100 CLOCK = 0;
	#100 CLOCK = 1;
	#100 CLEAR = 1;
		 DD = 0;
		 PRESET = 0;
	#100 CLOCK = 0;
	#100 CLOCK = 1;

	#1000
	//  Preset and Clear are simultaneously active
	#100 CLEAR = 0;
	#100 $stop;
	end
endmodule
