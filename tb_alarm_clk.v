`timescale 100us/1us

module tb_alarm_clk();

wire AM_PM, Alarm;
wire[5:0] Secs_C, Mins_C;
wire[3:0] Hours_C;

wire Clock_1Sec, Clock_1MSec, Clock_5k; 
reg Reset, LoadAlm, Set_AM_PM, Alarm_AM_PM_In, AlarmEnable;
reg[5:0] SetSecs, SetMins, AlarmMinsIn;
reg[3:0] SetHours, AlarmHoursIn;
reg Control, LoadTime;

//clock generator? alarm clock instantiation
clock_gen clkgen(Clock_5K, Clock_1Sec, Clock_1MSec);

alarm_clk alarmclk(Clock_1Sec, Reset, LoadTime, LoadAlm, AlarmEnable, 
		Set_AM_PM, Alarm_AM_PM_In,
		SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn,
		AM_PM, Alarm, Secs_C, Mins_C, Hours_C, Control);
initial 
begin//??? ??
			Control=1; LoadTime=0; Reset=0; LoadAlm=0;

end
endmodule
