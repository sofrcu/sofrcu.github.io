Program prog_0806b;

uses oldlinux, Crt;

//Defino un procedimiento para atender a las seniales.
Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Proceso padre: Recibiendo senial ',sig);
end; 

var
    pid: Longint;
    senial: Integer;

begin
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	//Proceso hijo
			senial := 10;
			//espero 10'' antes de enviar la senial...
			delay(10000);
			Writeln('Proceso hijo: Envio senial 10 al proceso ',getppid(),'...');
			kill(getppid(), senial);
			Pause;
			Writeln('Proceso hijo: terminando...');
	     end;
	else begin	//Proceso padre
			//Solo el padre maneja la senial
			Signal(SigUsr1,@MuestraSenial);
			Writeln('Proceso padre: esperando senial 10...');
			WaitProcess(pid);
			Writeln('Proceso padre: terminando...');
	     end;
    end;
end.