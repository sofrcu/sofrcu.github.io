program Prog_0708;

Uses Linux;

var
    pid: Longint;
    i, n: Integer;

begin
    
    n := 5;
    
    for i:=1 to n do
	begin
	    pid := Fork;
	    if pid <> 0 then break;
	end;
    Writeln('El padre del proceso ', getpid, ' es: ', getppid);
		
end.