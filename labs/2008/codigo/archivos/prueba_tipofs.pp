program fsstatus;

uses oldlinux;

var ubicacion : String; 
    fsinfo : StatFS;

begin
  ubicacion:='.';
  if not FSStat(ubicacion,fsinfo) then
       begin
       Writeln('Fallo el FSStat. Error No : ',LinuxError);
       Halt(1);
       end;
    Write ('Tipo de FS           : ');
    if fsinfo.fstype = FS_PROC then
      WriteLn('Proc.')
    else if fsinfo.fstype = fs_ext2 then
      WriteLn('Ext2.')
    else
     WriteLn(fsinfo.fstype);
    Writeln ('Tamanio en bloques   : ',fsinfo.bsize);
    Writeln ('Bloques libres       : ',fsinfo.bfree);
    Writeln ('Bloques disponibles  : ',fsinfo.bavail);
    Writeln ('Archivos             : ',fsinfo.files);
    Writeln ('Descriptores libres  : ',fsinfo.ffree);
    Writeln ('Identificacion de FS : ',fsinfo.fsid);
    Writeln ('Long. del Nombre     : ',fsinfo.namelen);
  if fsinfo.fstype = fs_proc then
    WriteLn('Es un filesystem PROC..');

end.
