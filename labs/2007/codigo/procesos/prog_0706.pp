program Prog_0706;

Uses oldlinux, Crt;

var
    pid: Longint;

begin
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin
		Writeln('Soy el hijo, y mi PID es: ', getpid);
		Delay(50000);
	     end;
	else begin
		Writeln('Soy el padre, y mi PID es: ', getpid);
	     end;
    end;
end.