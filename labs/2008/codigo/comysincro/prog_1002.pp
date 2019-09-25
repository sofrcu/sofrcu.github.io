Program prog_1002;

Uses oldlinux, crt;
Var atras, frente: Text;
    s: String;
    i: Integer;
begin
  Writeln('Creando Pipe.');
  if not AssignPipe(frente, atras) then
      Writeln('Error creando pipes! ' , LinuxError);
  if fork()>0 then begin {Padre == Productor}
    for i:=1 to 10 do begin
     Writeln('(P) Escribiendo ',i ,' en el PIPE.');
     WriteLn(atras, i);
     Delay(Random(1000));
    end;
    WriteLn(atras, '-1');
    WaitProcess(0); {Espera al hijo para terminar}
    Writeln('(P) Terminando...');
    Close(frente);Close(atras);            
  end
  else begin {Hijo == Consumidor}
    Writeln('(C) Leyendo el PIPE...');
    repeat
      Delay(Random(1500));
      ReadLn(frente, s);
      Writeln('(C) Leido: ', s);      
    until s='-1'; 
    Writeln('(C) Terminando...');
    Close(frente);       
  end;
end.
