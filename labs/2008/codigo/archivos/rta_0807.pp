program mi_ls;

uses oldlinux;

var directorio : PDir;
    entrada : PDirent;
    archivo : Stat;
    num_archivos: LongInt;

begin
  num_archivos := 0;  
  
  directorio := OpenDir(ParamStr(1));
  Writeln ('Listando directorio ',ParamStr(1),'...');    
  
  repeat 
    entrada := ReadDir(directorio);
    if entrada <> nil then 
      begin
        num_archivos := num_archivos + 1;
	FStat(ParamStr(1)+'/'+pchar(@entrada^.name[0]),archivo);
	Write (archivo.ino,'  ');
	Write (archivo.size,'  ');		
	Writeln (pchar(@entrada^.name[0]));
    end;
  until entrada = nil;
  Writeln (num_archivos,' elemento(s) listado(s)');
  
  CloseDir (directorio);
end.