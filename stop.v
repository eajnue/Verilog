module stop(Clock_1MSec, Reset, Start_S, Stop_S, Reset_S, 
		Hours_S, Mins_S, Secs_S, MSecs_S, Control);


output reg[3:0] Hours_S;
output reg[5:0] Mins_S, Secs_S;
output reg[9:0] MSecs_S;
input Clock_1MSec, Reset, Start_S, Stop_S, Reset_S, Control;

begin
	assign Hours_S=0;//??? ??
	assign Mins_S=0;
	assign Secs_S=0;
	assign MSecs_S=0;


always@(negedge Clock_1MSec or posedge Reset)begin//Clock_1MSec? ????? Reset? ?????? ??

if(!Control)begin//Control=1? ? stopwatch??

if(!Stop_S)begin//Stop_S=0
	if(Start_S)begin//Start_S=1? ? count
		MSecs_S<=MSecs_S+1;
		if(MSecs_S==999)begin
			MSecs_S<=0;
			Secs_S<=Secs_S+1;
			if(Secs_S==59) begin
				Secs_S<=0;
				Mins_S<=Mins_S+1;
				if(Mins_S==59)begin
					Mins_S<=0;
					Hours_S<= Hours_S+1;
					if(Hours_S==11)begin
						Hours_S<=0;
						end
					end
				end
			end
		end
	else begin//Start_S=0? ? ??
		MSecs_S<=MSecs_S;
		Secs_S<=Secs_S;
		Mins_S<=Mins_S;
		Hours_S<= Hours_S;
		end
end

else begin//Stop_S=1
	if(!Reset)begin//Stop_S=1, Reset=0? ? ? ???
		assign Hours_S=0;
		assign Mins_S=0;
		assign Secs_S=0;
		assign MSecs_S=0;
		end
	end

end//control
end//always
end

endmodule
