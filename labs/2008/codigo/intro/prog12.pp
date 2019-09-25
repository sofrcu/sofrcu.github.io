program Variables;

var
  a : integer;

procedure Asignar;
  var
    b, c : integer;
  begin
    a := 15;
    b := 10;
    c := b;
    d := b;
  end;

var
  b, d : integer; 

begin
  a := 10;
  b := 5;
  Asignar;
  c := 4;
end.