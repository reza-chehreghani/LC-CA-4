`timescale 1ns/1ns
module TB_1();
	logic SS = 1, RR = 0;
	wire QQ, QQb;
	SR_latch UUT(SS, RR, QQ, QQb);
	initial begin
	#40 RR = 1;
	#40 SS = 0;
	#40 SS = 1;
	#40 SS = 0;
		RR = 0;
	#40 $stop;
	end
endmodule
