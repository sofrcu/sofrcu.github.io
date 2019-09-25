Program prog_0702;

Uses oldlinux;

Var epoch: longint;
Var anio, mes, dia, hora, min, seg : word;

begin
 epoch := GetEpochTime;
 Writeln('Segundos transcurridos desde Epoch: ', epoch);
 EpochToLocal(epoch, anio, mes, dia, hora, min, seg);
 Writeln('Fecha: ',dia:2,'/',mes:2,'/',anio:4);
 Writeln('Hora: ',hora:2,':',min:2,':',seg:2);
end.
