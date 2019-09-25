program Prog_0505;

Uses BaseUnix;

var
    pid: Longint;

begin
    pid := fpFork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin
	  Writeln('Soy el hijo:');
	  Writeln(' Id del proceso: ', fpgetpid);
	  Writeln(' Id de mi proceso padre: ', fpgetppid);
	     end;
	else begin
	  Writeln('Soy el padre:');
	  Writeln(' Id del proceso: ', fpgetpid);
	  Writeln(' Id de mi proceso padre: ', fpgetppid);
	     end;
    end;
end.
