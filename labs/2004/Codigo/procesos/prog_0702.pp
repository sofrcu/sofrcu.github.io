program Prog_0702;

Uses Linux;

begin
    
    Writeln('Identificador de usuario: ', getuid);
    Writeln('Identificador efectivo de usuario: ', geteuid);
    Writeln('Identificador de grupo: ', getgid);
    Writeln('Identificador efectivo de grupo: ', getegid);

end.