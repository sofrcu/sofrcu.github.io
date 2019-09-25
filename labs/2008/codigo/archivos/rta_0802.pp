program rta_0802;

uses oldlinux;

var fd : Longint;
    ruta,datos: String;
        
begin
  ruta := ParamStr(1);
  if Access(ruta, F_OK) then begin
    if Access(ruta, R_OK) then begin
      fd := FDOpen(ruta,Open_RdOnly);
      if fd>0 then begin
        if FDRead(fd,datos,10) < 0 then begin
          Writeln ('Error leyendo archivo!!!');
          Halt(2);
        end;
        Writeln(datos);
      end;
      fdCLose(FD);
    else begin
     Writeln('No tiene permisos de lectura sobre ',ruta,'!!!');
     Halt(2);
    end;
  else begin
     Writeln(ruta,' no existe!!!');
     Halt(2);
  end;
end.
