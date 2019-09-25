program Funciones;

var
  n, m : integer;

function max(a, b : integer) : integer;
  begin
    if a >= b then
       begin
         max := a
       end
    else
       begin
         max := b;
       end;
  end;

begin
  Write('Introduzca el valor entero M: '); readln(m);
  Write('Introduzca el valor entero N: '); readln(n);
  Writeln('El máximo entre ', M, ' y ', N, ' es ', max(m, n));
end.