program linkstatus;

uses oldlinux;
    
var info : stat;
    
begin
  
 if not LStat(ParamStr(1),info) then 
     begin
     writeln('Fallo la llamada a LStat. Error No : ',LinuxError);
     halt (1);
     end;
  writeln;
  writeln ('Resultados del LStat del archivo: ''',ParamStr(1),'''.');
  writeln ('I-nodo                    : ',info.ino);
  writeln ('Modo (Tipo y Permisos)    : ',info.mode);
  writeln ('Numero de links           : ',info.nlink);
  writeln ('User ID del duenio        : ',info.uid);
  writeln ('Group ID del duenio       : ',info.gid);
  writeln ('Tipo de dispositivo inodo : ',info.rdev);
  writeln ('Tamanio en Bytes          : ',info.size);
  writeln ('Tamanio en Bloques        : ',info.blocks);  
  writeln ('Tamanio del Bloque        : ',info.blksize);
  writeln ('Ultimo acceso             : ',info.atime);
  writeln ('Ultima modificacion       : ',info.mtime);
  writeln ('Ultimo cambio             : ',info.ctime);

end.
