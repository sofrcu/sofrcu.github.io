program rta_0801;

uses oldlinux;

Var fd : Longint;
    datos: String;
    ruta, dir: String;

begin
  ruta := ParamStr(1);
  if Access(ruta, F_OK) then begin
    if not Access(ruta, W_OK) then
     Writeln('No tiene permisos de escritura sobre ',ruta,'!!!');
     exit();
    end
  else begin
    dir := DirName(ruta);
    if dir = '' then dir := '.'; 
    if not Access(dir, W_OK) then begin
     Writeln(ruta,' no existe y no puede crearlo dentro del directorio destino!!!');
     exit();
    end;
  end;
  fd := FDOpen(ruta,Open_WrOnly OR Open_Creat);
  if fd > 0 then
    Writeln('Escriba lo que desea en el archivo ',ruta,':');
    Readln(datos);
    begin
    if (Length(datos)+1) <> (FDWrite(fd,datos,Length(datos)+1)) then
      Writeln ('Error al escribir en el archivo!!!');
    FDClose(fd);
  end;
end.
