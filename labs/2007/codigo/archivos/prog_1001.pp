program archivo_agrega;

uses oldlinux;

Var fd : Longint;
    datos: String;

begin
  fd := FDOpen(ParamStr(1),Open_WrOnly or Open_Creat);
  if fd > 0 then
    Writeln('Escriba lo que desea en el archivo ',ParamStr(1),':');
    Readln(datos);
    begin
    if (Length(datos)+1) <> (FDWrite(fd,datos,Length(datos)+1)) then
      Writeln ('Error al escribir en el archivo!!!');
    FDClose(fd);
    end;
end.
