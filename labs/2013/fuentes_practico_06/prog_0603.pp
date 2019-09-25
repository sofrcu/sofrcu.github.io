program prog_0603; 
uses BaseUnix; 
var info : Stat; 
begin 
  if FPStat(ParamStr(1),info)<>0 then begin 
    Writeln('Fallo la llamada a fpFSat!!!'); 
     halt (1); 
  end; 
  writeln ('Resultados del fpFstat del archivo:'); 
  writeln ('I-nodo                    : ',info.st_ino); 
  writeln ('Modo (Tipo y Permisos)    : ',info.st_mode); 
  writeln ('Numero de links           : ',info.st_nlink); 
  writeln ('User ID del duenio        : ',info.st_uid); 
  writeln ('Group ID del duenio       : ',info.st_gid); 
  writeln ('Tipo de dispositivo inodo : ',info.st_rdev); 
  writeln ('Tamanio del Bloque        : ',info.st_blksize); 
  writeln ('Tamanio en Bytes          : ',info.st_size); 
  writeln ('Nro. de Bloques           : ',info.st_blocks); 
  writeln ('Ultimo acceso             : ',info.st_atime); 
  writeln ('Ultima modificacion       : ',info.st_mtime); 
  writeln ('Ultimo cambio             : ',info.st_ctime); 
end.
