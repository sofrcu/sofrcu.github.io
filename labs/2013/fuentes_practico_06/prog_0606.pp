program prog_0606; 

uses BaseUnix; 

var directorio : PDir; 
    entrada : PDirent; 

begin 
  directorio := fpOpenDir(ParamStr(1)); 
  repeat 
    entrada := fpReadDir(directorio^); 
    if entrada <> nil then 
    With entrada^ do 
      begin 
          Writeln ('-----------------------------------'); 
{      Writeln ('Entrada No    : ',Entry);} {puede ser que no funcione}
          Writeln ('Nombre        : ',pchar(@d_name[0])); 
          Writeln ('I-nodo        : ',d_fileno); 
          Writeln ('Offset        : ',d_off); 
          Writeln ('Long. Nombre   : ',d_reclen); 
      end; 
  until entrada = nil; 

  fpCloseDir (directorio^); 
end.
