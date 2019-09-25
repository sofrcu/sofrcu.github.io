program prog_0903;

uses oldlinux;

var anio, mes, dia, hora, min, seg, mseg, useg : word;

begin
 GetDate(anio, mes, dia);
 GetTime(hora, min, seg, mseg, useg);
 Writeln('Fecha: ',dia:2,'/',mes:2,'/',anio:4);
 Writeln('Hora: ',hora:2,':',min:2,':',seg:2,':',mseg:2,':',useg:2);
end.
