Program prog_0601; 

uses BaseUnix; 

Var fd : Longint; 
    datos: String; 

begin 
  fd := FPOpen(ParamStr(1),O_WrOnly OR O_Creat); 
  if fd > 0 then 
    begin
    Writeln('Escriba lo que desea en el archivo:'); 
    Readln(datos); 
      if (Length(datos)+1) <> (FPWrite(fd,datos,Length(datos)+1)) then 	Writeln ('Error al escribir en el archivo!!!'); 
    FPClose(fd); 
    end; 
end.
