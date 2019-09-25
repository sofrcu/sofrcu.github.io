Program prog_0802;

uses oldlinux;

//Defino un procedimiento para atender a las seniales.
Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Recibiendo senial: ',sig);
end; 

begin
//Establezco la accion a realizar al recibir SIGUSR1.   
   Signal(SigUsr1,@MuestraSenial);
//Establezco la misma accion para SIGUSR2.   
   Signal(SigUsr2,@MuestraSenial);   
//Espero a que presione Enter para salir...
   Writeln('Envie senial USR1, USR2 o <ENTER> para salir');
   Writeln(' (ejecute kill -SIGUSR1 ',getpid,' o ejecute');
   Writeln('  kill -SIGUSR2 ',getpid,')...');
   readln;
end.