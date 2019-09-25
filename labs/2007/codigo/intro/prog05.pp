program Calcular_n_potencias;

uses Math;

var
  r, n : Integer;

begin
  Write('R: ');
  Readln(r);
if r > 1 then
   begin
    Write('N: ');
    Readln(n);
    Write('Resultado: ');
    Writeln((r**n-1) div (r-1));
   end;
end.
