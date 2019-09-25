program prog_0607; 

uses BaseUnix, Unix, Unixtype; 
    
var ubicacion : pchar;
	fd: cint;
    fsinfo : TStatFS; 
begin 
  ubicacion:='.';
  fd:= fpOpen(ubicacion, O_RdOnly);
  if fstatfs(fd,fsinfo)<>0 then 
       begin 
       Writeln('Fallo el fpStatFS. Error No : ',fpgeterrno); 
       Halt(1); 
       end; 
    Writeln ('Tipo de FS           : ',fsinfo.fstype); 
    Writeln ('Tamanio de bloque    : ',fsinfo.bsize); 
    Writeln ('Bloques libres       : ',fsinfo.bfree); 
    Writeln ('Bloques disponibles  : ',fsinfo.bavail); 
    Writeln ('Archivos             : ',fsinfo.files); 
    Writeln ('Descriptores libres  : ',fsinfo.ffree); 
    Writeln ('Identificacion de FS : ',fsinfo.fsid[0]); 
    Writeln ('Long. del Nombre     : ',fsinfo.namelen); 
end.
