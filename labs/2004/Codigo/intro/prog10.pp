program Dias_Semana;

var
  diasemana : Integer;

begin
  Write('Introduzca el día de la semana: ');
  Readln(diasemana);
  case diasemana of
    1 : begin
          Writeln('Lunes');
        end;
    2 : begin
          Writeln('Martes');
        end;
    3 : begin
          Writeln('Miercoles');
        end;
    4 : begin
          Writeln('Jueves');
        end;
    5 : begin
          Writeln('Viernes');
        end;
    6 : begin
          Writeln('Sábado');
        end;
    7 : begin
          Writeln('Domingo');
        end;
    else
        begin
          Writeln('Número no válido');
        end;
  end;
end.
