Program prog_0806;

uses oldlinux, Crt;

//Defino un procedimiento para atender a las seniales.
Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Proceso hijo: Recibiendo senial ',sig);
end; 

var
    pid: Longint;
    senial: Integer;

begin
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin	//Proceso hijo
			//Solo el hijo maneja la senial
			Signal(SigUsr1,@MuestraSenial);
			Writeln('Proceso hijo: esperando senial 10...');
			Pause;
			Writeln('Proceso hijo: terminando...');
	     end;
	else begin	//Proceso padre
			senial := 10;
			//espero 10'' antes de enviar la senial...
			delay(10000);
			Writeln('Proceso padre: Envio senial 10 al proceso ',pid,'...');
			kill(pid, senial);
			WaitProcess(pid);
			Writeln('Proceso padre: terminando...');
	     end;
    end;
end.