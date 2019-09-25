Program prog_1007;

uses oldlinux;

Procedure MuestraSenial(sig : Longint);cdecl;
begin
   writeln('Recibiendo senial: ',sig);
end; 

begin
   Signal(SigUsr1,@MuestraSenial);
   Writeln ('Envie senial USR1 para salir');
   Writeln (' (ejecute kill -SIGUSR1 ',getpid,' )');
   {Queda esperando que llegue una senial.}  
   Pause;
   Writeln ('Terminando...');   
end.