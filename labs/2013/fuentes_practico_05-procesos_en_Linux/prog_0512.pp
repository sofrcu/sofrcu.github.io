program Prog_0512;

uses BaseUnix, unix;

var
	pid: Tpid;
	options: longint;
	status: longint;

begin
    
    pid := fpFork;
    options:=0;
    status:=0;
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('PID antes del EXEC: ', fpgetpid);
		Writeln('PPID antes del EXEC: ', fpgetppid);
		Writeln('Ejecutando EXEC...');		
		fpExecl('./prog_0501',['']);
		Writeln('Terminado el EXEC...');
	     end;
	else begin	{Proceso padre }
		fpWaitpid(pid, status, options);
	     end;
    end;		
end.
