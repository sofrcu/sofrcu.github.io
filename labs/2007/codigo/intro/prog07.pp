program Calcular_n_potencias;

uses Math;

var
  r, n, i, suma : Integer;

begin
  Write('R: ');
  Readln(r);
  if r > 1 then
     begin
      Write('N: ');
      Readln(n);
      Write('Resultado: ');
      Writeln((r**n-1) div (r-1));
      // Método mecánico
      suma := 0;
      for i := 0 to n-1 do
          begin
           suma := suma + r**i;
          end;
      Write('Resultado Mecánico: ');
      Writeln(suma);
     end
  else
     begin
      Writeln('R tiene que ser un valor mayor que 1');
     end;
end.
