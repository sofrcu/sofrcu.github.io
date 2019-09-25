program prog_0605; 

uses BaseUnix; 

var archivo: Stat; 

begin 
  if fpStat(ParamStr(1),archivo)=0 then 
    begin 
    if fpS_ISLNK(archivo.st_mode) then 
      Writeln ('El archivo es un enlace...'); 
    if fpS_ISREG(archivo.st_mode) then 
      Writeln ('El archivo es un archivo regular...');      
    if fpS_ISDIR(archivo.st_mode) then 
      Writeln ('El archivo es un directorio...'); 
    if fpS_ISCHR(archivo.st_mode) then 
      Writeln ('El archivo es un dispositivo de caract...'); 
    if fpS_ISBLK(archivo.st_mode) then 
      Writeln ('El archivo es un dispositivo de bloques...'); 
    if fpS_ISFIFO(archivo.st_mode) then 
      Writeln ('El archivo es una canieria (Pipe)...'); 
    if fpS_ISSOCK(archivo.st_mode) then 
      Writeln ('El archivo es un socket...'); 
  end; 
end.
