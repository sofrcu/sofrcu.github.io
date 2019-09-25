program Prog_0911;

Uses oldlinux;

var
    pid: Longint;

begin
    
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('Proceso hijo:');
		Execlp('ls -l', envp); {Uso execlp que busca el comando en el path...}
	     end;
	else begin	{Proceso padre }
		Writeln('Proceso padre:');
		WaitProcess(pid);
	     end;
    end;
		
end.