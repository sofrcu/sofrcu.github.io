program Prog_0502;

Uses BaseUnix;

begin
    
    Writeln('Identificador de usuario: ', fpgetuid);
    Writeln('Identificador efectivo de usuario: ', fpgeteuid);
    Writeln('Identificador de grupo: ', fpgetgid);
    Writeln('Identificador efectivo de grupo: ', fpgetegid);

end.
