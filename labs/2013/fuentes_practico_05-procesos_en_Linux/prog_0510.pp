Program Prog_0510;
Uses BaseUnix, unix;
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
		0 : begin
			{Proceso hijo }
			Writeln('Proceso hijo:');
			fpExecl('/bin/ls',['-l']);
		    end;
		else begin
			{Proceso padre }
			fpWaitpid(pid, status, options);
			Writeln('Proceso padre.');
		     end;
	end;
end.
