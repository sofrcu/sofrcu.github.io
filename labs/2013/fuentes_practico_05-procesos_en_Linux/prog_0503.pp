program Prog_0503;

Uses BaseUnix;

begin
    
    Writeln('El directorio actual es: ',fpgetenv('PWD'));
    Writeln('El Path es: ',fpgetenv('PATH'));

end.
