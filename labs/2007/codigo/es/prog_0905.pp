program prog_0905;

uses oldlinux;

 procedure MuestraTermios(var tios:Termios);
 begin
   WriteLn('Flags Entrada: $',hexstr(tios.c_iflag,8)+#13);
   WriteLn('Flags Salida: $',hexstr(tios.c_oflag,8));
   WriteLn('Flags Linea: $',hexstr(tios.c_lflag,8));
   WriteLn('Flags Control: $',hexstr(tios.c_cflag,8));
 end;

var  oldios,  tios: Termios;

begin
  WriteLn('Atributos originales:');
  TCGetAttr(1,tios);
  MuestraTermios(tios);
  oldios:=tios;
  Writeln('Estableciendo modo raw');
  CFMakeRaw(tios);
  TCSetAttr(1,TCSANOW,tios);
  WriteLn('Atributos actuales:');
  TCGetAttr(1,tios);
  MuestraTermios(tios);
  TCSetAttr(1,TCSANOW,oldios);
  WriteLn('Valores originales reestablecidos.');
end.
