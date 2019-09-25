Program prog_1001;

Uses oldlinux;
Var atras, frente: Text;
    s: String;
begin
  Writeln('Creando Pipe.');
  if not AssignPipe(frente, atras) then
      Writeln('Error creando pipes! ' , LinuxError);
  if fork()>0 then {padre}
  begin
    Writeln('(P) Escribiendo en el PIPE.');
    Writeln(atras, 'Hola hijo!');
    Close(atras);
    WaitProcess(0);{Esperando al hijo para terminar...}
    Writeln('(P) Terminando...');    
  end
  else begin {hijo}
    Writeln('(C) Leyendo el PIPE...');
    Readln(frente, s);
    Close(frente);
    Writeln('(C) Leido: ', s);
    Writeln('(C) Terminando...');    
  end;

end.
