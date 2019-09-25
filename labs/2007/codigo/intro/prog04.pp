program Calcular_R_a_la_N;
 { Este comentario está hecho con llaves }
uses Math;
var
   r, n : Integer;
 (* Este, en cambio, emplea la notación antigua de Pascal *)
begin
   Write('R: '); // Desde las 2 barras hasta el final de linea es un comentario
   Readln(r);
   Write('N: ');
   Readln(n);
   Write('Resultado: ');
   Writeln(r**n);
end.
