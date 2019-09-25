program cual_es;

uses oldlinux;

var archivo: Stat;

begin
  if LStat(ParamStr(1),archivo) then
    begin
    if S_ISLNK(archivo.mode) then 
      Writeln ('El archivo es un enlace...');
    if S_ISREG(archivo.mode) then 
      Writeln ('El archivo es un archivo regular...');      
    if S_ISDIR(archivo.mode) then 
      Writeln ('El archivo es un directorio...');
    if S_ISCHR(archivo.mode) then 
      Writeln ('El archivo es un dispositivo de caracteres...');
    if S_ISBLK(archivo.mode) then 
      Writeln ('El archivo es un dispositivo de bloques...');
    if S_ISFIFO(archivo.mode) then 
      Writeln ('El archivo es una canieria (Pipe)...');
    if S_ISSOCK(archivo.mode) then 
      Writeln ('El archivo es un socket...');
  end;
end.
