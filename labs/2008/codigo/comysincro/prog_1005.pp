Program prog_1005;

uses oldlinux;

var
   proceso: LongInt;
   senial: Integer;

begin
   Write('Proceso destino: ');
   Readln(proceso);
   Write('Senial a enviar: ');
   Readln(senial);
   kill(proceso, senial);
end.