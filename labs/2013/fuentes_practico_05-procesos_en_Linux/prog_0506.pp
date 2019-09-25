program Prog_0506;

Uses BaseUnix, Crt;

var
    pid: Longint;

begin
    pid := fpFork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin
		Writeln('Soy el hijo, y mi PID es: ', fpgetpid);
		Delay(50000);		
	     end;
	else begin
		Writeln('Soy el padre, y mi PID es: ', fpgetpid);
	     end;
    end;
end.
