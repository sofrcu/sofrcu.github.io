program archivo_lee;


uses linux;

var fd : Longint;
    datos: String;
        
begin
  fd := FDOpen(ParamStr(1),Open_RdOnly);
  if fd>0 then
    begin
        if FDRead(fd,datos,10) < 0 then
          begin
          Writeln ('Error leyendo archivo!!!');
          Halt(2);
          end;
      Writeln(datos);
  end;
  fdCLose(FD);
end.
