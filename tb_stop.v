`timescale 100us/1us

module tb_stop();


wire[3:0] Hours_S;
wire[5:0] Mins_S, Secs_S;
wire[9:0] MSecs_S;

wire Clock_1Sec, Clock_1MSec, Clock_5k;
reg Reset, Start_S, Stop_S, Reset_S, Control;

clock_gen clk_gen_stop(Clock_5K, Clock_1Sec, Clock_1MSec);

stop stopwtch(Clock_1MSec, Reset, Start_S, Stop_S, Reset_S, 
		Hours_S, Mins_S, Secs_S, MSecs_S, Control);

initial
begin
		Reset=1; Start_S=0; Control=0; Reset_S=0; Stop_S=0;


end
endmodule

