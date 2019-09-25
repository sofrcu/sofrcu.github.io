program cual_es;

uses oldlinux;

var archivo: Stat;

begin
  if LStat(ParamStr(1),archivo) then
    begin
     Writeln ('Antes: ',archivo.mode);
     Writeln ('Luego: ',archivo.mode AND STAT_IXUSR);
     Writeln ('A ver...: ',octal(STAT_IXUSR));
  end;
end.
