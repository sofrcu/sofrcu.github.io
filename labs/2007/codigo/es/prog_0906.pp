program prog_0906;

uses oldlinux;

var  oldios,  tios: Termios;
      fd: Longint;

begin
  fd := fdOpen('/dev/tty1',Open_RdWr);
  if IsATTY(fd) then
  begin
    WriteLn('Escriba algo de texto y enter para continuar...'); ReadLn;
    WriteLn('Abierta terminal: ', TTYname(fd) );
    TCGetAttr(fd,tios);
    WriteLn('Salvando atributos originales de ', TTYname(fd), ':');
    oldios:=tios;
    Writeln('Desactivando ECHO en ', TTYname(fd), '...');
    tios.c_lflag := tios.c_lflag XOR ECHO;
    TCSetAttr(fd,TCSANOW,tios);
    WriteLn('Escriba algo de texto y enter para continuar...'); ReadLn;
    TCSetAttr(fd,TCSANOW,oldios);
    WriteLn('Valores originales reestablecidos.');
  end
end.
