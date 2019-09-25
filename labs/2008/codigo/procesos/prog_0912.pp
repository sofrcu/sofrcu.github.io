program Prog_0912;

Uses oldlinux;

var
    pid: Longint;

begin

    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('PID antes del EXEC: ', getpid);
		Writeln('PPID antes del EXEC: ', getppid);
		Writeln('Ejecutando EXEC...');
		Execl('./prog_0901');
		Writeln('Terminado el EXEC...');
	     end;
	else begin	{Proceso padre }
		WaitProcess(pid);
	     end;
    end;

end.
