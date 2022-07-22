module TOP(Clock_5K, Reset, Control,
           Start_S, Stop_S, Reset_S,
           AM_PM, Hours, Mins, Secs, MSecs, Alarm, SW_State,
           LoadTime, LoadAlm, AlarmEnable, Set_AM_PM, Alarm_AM_PM_In,
           SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn);

output[3:0] Hours;
output[5:0] Mins, Secs;
output[9:0] MSecs;
output AM_PM, Alarm, SW_State;

input Clock_5K, Reset, Control, LoadTime, LoadAlm, Set_AM_PM, Alarm_AM_PM_In, AlarmEnable; 
input[5:0] SetSecs, SetMins, AlarmMinsIn;
input[3:0] SetHours, AlarmHoursIn;
input Start_S, Stop_S, Reset_S;



begin

clock_gen Clock_Generator(Clock_5K, Clock_1Sec, Clock_1MSec);

alarm_clk Alarm_Clock( , Reset, LoadTime, LoadAlm, AlarmEnable, 
				Set_AM_PM, Alarm_AM_PM_In,
				SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn,
				AM_PM, Alarm, Secs, Mins, Hours, Control);

stop Stop_Watch( , Reset, Start_S, Reset_S,
		Hours, Mins, Secs, MSecs, Control);

end

endmodule