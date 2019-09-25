Program prog_0804;

uses oldlinux;

var
	proceso: LongInt;
	senial, error: Integer;

begin
if (ParamCount <> 2) then
      Writeln('Uso: ',ParamStr(0),' SENIAL PID')
else begin
      Val(ParamStr(1),senial,error); 
      Val(ParamStr(2),proceso,error);
      Writeln('Enviando senial ',senial,' al proceso ',proceso,'...');
      kill(proceso, senial);
     end;   
end.