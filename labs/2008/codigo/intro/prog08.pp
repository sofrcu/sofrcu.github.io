program Prueba_Mientras;

var
  cadena : string;

begin
  cadena := ''; // Una cadena vacía
  while cadena <> '.' do
        begin
         Write('Escriba algo (Un punto para terminar) : ');
         Readln(cadena);
        end;
  Writeln('Fin del programa');
end.

