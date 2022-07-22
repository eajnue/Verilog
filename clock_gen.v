`timescale 100us/1us

module clock_gen(Clock_5K, Clock_1Sec, Clock_1MSec);

output Clock_1Sec, Clock_1MSec, Clock_5K;
reg Clock_1Sec, Clock_1MSec, Clock_5K;

begin

assign Clock_1Sec=0;
assign Clock_1MSec=0;
assign Clock_5K=0;

always #5000 Clock_1Sec=~Clock_1Sec;
always #5 Clock_1MSec=~Clock_1MSec;
always #1 Clock_5K=~Clock_5K;
end
endmodule