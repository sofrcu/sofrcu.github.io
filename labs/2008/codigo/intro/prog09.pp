program Prueba_Repetir;

var
  nombre : string;

begin
  repeat
    Write('Escriba su nombre: ');
    Readln(nombre);
  until nombre<>'';
end.

