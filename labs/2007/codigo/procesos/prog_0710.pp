program Prog_0710;

Uses oldlinux;

var
    pid: Longint;

begin
    
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('Proceso hijo:');
		Execl('/usr/bin/ls -l');
	     end;
	else begin	{Proceso padre }
		Writeln('Proceso padre:');
		WaitProcess(pid);
	     end;
    end;
		
end.
