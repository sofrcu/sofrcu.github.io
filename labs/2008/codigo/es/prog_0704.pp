program prog_0704;

uses oldlinux;

 procedure MSenialAlarma(Senial: longint);cdecl;
 begin
   Writeln('Recibida senial de alarma!');
 end;

begin
  Writeln('Armando senial de alarma...');
  Signal(SIGALRM,@MSenialAlarma);
  Writeln('Solicitando una alarma en 10"...');
  Alarm(10);
  Writeln('Pausa hasta recibir alguna senial...');
  Pause;
  Writeln('Terminando');
end.
