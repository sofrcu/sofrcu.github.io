program fsstatus;

uses oldlinux;

var ubicacion : String; 
    fsinfo : StatFS;

begin
  ubicacion:='.';
  if not FSStat(ubicacion,fsinfo) then
       begin
       Writeln('Fallo el FSStat. Error No : ',linuxerror);
       Halt(1);
       end;
    Writeln ('Tipo de FS           : ',fsinfo.fstype);
    Writeln ('Tamanio bloque       : ',fsinfo.bsize);
    Writeln ('Bloques libres       : ',fsinfo.bfree);
    Writeln ('Bloques disponibles  : ',fsinfo.bavail);
    Writeln ('Archivos             : ',fsinfo.files);
    Writeln ('Descriptores libres  : ',fsinfo.ffree);
    Writeln ('Identificacion de FS : ',fsinfo.fsid);
    Writeln ('Long. del Nombre     : ',fsinfo.namelen);
end.