`timescale 10us/1us

module tb_HDL_project();

reg[3:0] Hours;
reg[5:0] Mins, Secs;
reg[9:0] MSecs;
reg AM_PM, Alarm, SW_State;

wire Clock_5K, Reset, Control, LoadTime, LoadAlm, Set_AM_PM, Alarm_AM_PM_In, AlarmEnable; 
wire[5:0] SetSecs, SetMins, AlarmMinsIn;
wire[3:0] SetHours, AlarmHoursIn;
wire Start_S, Stop_S, Reset_S;

Top(Clock_5K, Reset, Control,
           Start_S, Stop_S, Reset_S,
           AM_PM, Hours, Mins, Secs, MSecs, Alarm, SW_State,
           LoadTime, LoadAlm, AlarmEnable, Set_AM_PM, Alarm_AM_PM_In,
           SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn);


initial
begin
