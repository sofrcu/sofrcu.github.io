program Prog_0508;

Uses BaseUnix;

var
    pid: Longint;
    i, n: Integer;

begin
 n := 5;
    
 for i:=1 to n do
    begin
	  pid := fpFork;
	  if pid <> 0 then break;
    end;
 Writeln('El padre del proceso ', fpgetpid, ' es: ', fpgetppid);
		
end.
