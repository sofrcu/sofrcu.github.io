program Prog_0711;

Uses Linux;

var
    pid, options: Longint;
    status: ^Integer;

begin
    
    pid := Fork;
    status := 0;
    options := 0;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('Proceso hijo:');
		Execlp('ls -l', envp); {Uso execlp que busca el comando en el path...}
	     end;
	else begin	{Proceso padre }
		Writeln('Proceso padre:');
		Waitpid(pid, status, options);
	     end;
    end;
		
end.