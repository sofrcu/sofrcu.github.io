Program prog_0805;

uses Linux;

//Defino un procedimiento para atender a las seniales.
Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Recibiendo senial: ',sig);
end; 

begin
//Establezco la accion a realizar al recibir SIGUSR1.   
   Signal(SigUsr1,@MuestraSenial);
//Espero a que presione Enter para salir...
   Writeln ('Envie senial USR1para salir');
   Writeln (' (ejecute kill -SIGUSR1 ',getpid,' )');
//Queda esperando que llegue una senial.  
   Pause;
end.