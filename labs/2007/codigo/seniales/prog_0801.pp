Program prog_0801;

uses oldlinux;

//Defino un procedimiento para atender a las seniales.
Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Recibiendo senial: ',sig);
end; 

begin
//Establezco la accion a realizar al recibir SIGUSR1.   
   Signal(SigUsr1,@MuestraSenial);
//Espero a que presione Enter para salir...
   Writeln ('Envie senial USR1 o <ENTER> para salir');
   Writeln (' (ejecute kill -SIGUSR1 ',getpid,' )');
   readln;
end.