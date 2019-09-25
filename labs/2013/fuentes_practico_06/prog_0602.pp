Program prog_0602;

uses BaseUnix;

var fd : Longint;
    datos: String;
        
begin
  fd := fpOpen(ParamStr(1),O_RdOnly);
  if fd>0 then
    begin
        if fpRead(fd,datos,10) < 0 then
          begin
          Writeln ('Error leyendo archivo!!!');
          Halt(2);
          end;
      Writeln(datos);
  end;
  fpClose(FD);
end.
