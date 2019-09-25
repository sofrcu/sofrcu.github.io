program Prog_0513;

Uses BaseUnix, unix;

Const 
    Arg0: PChar = '/bin/ls'; 
    Arg1: Pchar = '-l'; 

var
    pid, options: Longint;
    status: longint;
    PP: PPchar;
    
begin
    GetMem(PP, 3*SizeOf(Pchar)); 
    
    PP[0]:= Arg0;
    PP[1]:= Arg1;
    PP[2]:= Nil;

    pid := fpFork;
    status := 0;
    options := 0;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	{Proceso hijo }
		Writeln('Proceso hijo:');
		fpExecv('/bin/ls', PP);
	     end;
	else begin	{Proceso padre }
		Writeln('Proceso padre.');
		fpWaitpid(pid, status, options);
	     end;
    end;
end.
