program dir_lee;


uses Linux;

var directorio : PDir;
    entrada : PDirent;

begin
  directorio := OpenDir(ParamStr(1));

  repeat 
    entrada := ReadDir(directorio);
    if entrada <> nil then 
      begin
        Writeln ('-----------------------------------');
        Writeln ('Entrada No    : ',TellDir(directorio));
        Writeln ('Nombre        : ',pchar(@entrada^.name[0]));
        Writeln ('I-nodo        : ',entrada^.ino);
        Writeln ('Offset        : ',entrada^.off);
        Writeln ('Long. Nombre   : ',entrada^.reclen);

    end;
  until entrada = nil;

  CloseDir (directorio);
end.
