program prog_0707;

uses oldlinux, dateutils;

var i: integer; f: longint; p: pointer;

  procedure MuestraHora(); 

  var hora, min, seg, mseg, useg : word;

  begin
   GetTime(hora, min, seg, mseg, useg);
   WriteLn(hora:2,':',min:2,':',seg:2,':',mseg:2,':',useg:2);
  end;

begin
  WriteLn('Operaciones en memoria: ');
  Write('Inicio: '); MuestraHora();
  for i:=1 to 1000 do begin
    GetMem(p,sizeOf(i));
    FillChar(p,sizeOf(i),i);
  end;
  Write('Fin: '); MuestraHora();
  Write('Presione enter para continuar...'); ReadLn;

  WriteLn('Operaciones en pantalla: ');
  Write('Inicio: '); MuestraHora();
  for i:=1 to 1000 do Write(i); //incremento el contador i y lo muestro...
  Write('Fin: '); MuestraHora();
  Write('Presione enter para continuar...'); ReadLn;

  WriteLn('Operaciones en disco (Sincronas): ');
  f := fdOpen('test.txt',Open_WrOnly OR Open_Creat OR Open_Sync);
  Write('Inicio: '); MuestraHora();
  for i:=1 to 1000 do fdWrite(f,i,1); //incremento el contador i y lo grabo...
  Write('Fin: '); MuestraHora();
  fdClose(f);  //erase(f);
  Write('Presione enter para continuar...'); ReadLn;

  WriteLn('Operaciones en disco (Asincronas): ');
  f := fdOpen('test.txt',Open_WrOnly OR Open_Creat);
  Write('Inicio: '); MuestraHora();
  for i:=1 to 1000 do fdWrite(f,i,1); //incremento el contador i y lo grabo...
  Write('Fin: '); MuestraHora();
  fdClose(f);  //erase(f);
end.
