program Prog_0905;

Uses oldlinux;

var
    pid: Longint;

begin
    
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin
		Writeln('En el hijo:');
		Writeln(' Id del proceso: ', getpid);
		Writeln(' Id del proceso padre: ', getppid);
	     end;
	else begin
		Writeln('En el padre:');
		Writeln(' Id del proceso: ', getpid);
		Writeln(' Id del proceso padre: ', getppid);
	     end;
    end;
		
end.
