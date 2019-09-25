program Prog_0902;

Uses oldlinux;

begin
    
    Writeln('Identificador de usuario: ', getuid);
    Writeln('Identificador efectivo de usuario: ', geteuid);
    Writeln('Identificador de grupo: ', getgid);
    Writeln('Identificador efectivo de grupo: ', getegid);

end.
