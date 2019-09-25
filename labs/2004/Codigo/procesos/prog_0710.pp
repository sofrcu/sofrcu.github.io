program Prog_0710;

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
		Execl('/usr/bin/ls -l');
	     end;
	else begin	{Proceso padre }
		Writeln('Proceso padre:');
		Waitpid(pid, status, options);
	     end;
    end;
		
end.