module alarm_clk(Clock_1Sec, Reset, LoadTime, LoadAlm, AlarmEnable, 
		Set_AM_PM, Alarm_AM_PM_In,
		SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn,
		AM_PM, Alarm, Secs_C, Mins_C, Hours_C, Control);

output reg AM_PM, Alarm;
output reg[5:0] Secs_C, Mins_C;
output reg[3:0] Hours_C;

input Clock_1Sec, Reset, LoadTime, LoadAlm, Set_AM_PM, Alarm_AM_PM_In, AlarmEnable;
input[5:0] SetSecs, SetMins, AlarmMinsIn;
input[3:0] SetHours, AlarmHoursIn;
input Control;


assign Secs_C=0;
assign Mins_C=0;
assign Hours_C=0;
assign AM_PM=1;


always@(negedge Clock_1Sec)begin//1sec clock? ?????? ??

if(Control) begin//control=1? ? ??
	if(LoadTime==0)begin//?? ??
		Secs_C<=Secs_C+1;
		if(Secs_C==59) begin
			Secs_C<=0;
			Mins_C<=Mins_C+1;
			if(Mins_C==59)begin
				Mins_C<=0;
				Hours_C<= Hours_C+1;
				if(Hours_C==11)begin
					AM_PM<=~AM_PM;
					Hours_C<=1;
					end
				end
			end
		end
	else begin//LoadTime=1, ?? setting
		assign Secs_C=SetSecs;
		assign Mins_C=SetMins;
		assign Hours_C=SetHours;
		assign AM_PM=Set_AM_PM;
		end
	end
end


always@(posedge Reset)begin//Reset=0, reset??
if(Control) begin//Control=1? ? ??
	assign Secs_C=0;
	assign Mins_C=0;
	assign Hours_C=0;
	assign AM_PM=1;
end
end


always@(posedge Mins_C)begin//?? ?? ??? ??
if(Control)begin
	if(LoadAlm)begin//LoadAlm=1, ?? ??
		assign Mins_C=AlarmMinsIn;
		assign Hours_C=AlarmHoursIn;
		assign AM_PM=Alarm_AM_PM_In;
		end
	else if(AlarmEnable && !LoadAlm)begin//?? ??, ?? ?? ??? ? 
		if(Mins_C==AlarmMinsIn && Hours_C==AlarmHoursIn && AM_PM==Alarm_AM_PM_In)begin
				assign Alarm=1;//?? ??? ??? ??? ??? ???? ??? ???.
			end
		end
	end
end

endmodule