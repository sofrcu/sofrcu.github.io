program Prog_0707;

Uses Linux;

var
    pid: Longint;
    a: Integer;

begin
    a:=5;
    pid := Fork;
    
    case pid of
	-1 : Writeln('Error en el fork!!!');
	0  : begin {Proceso hijo}
		a:=a+1;
		Writeln('(Hijo) El valor de a es: ', a);
	     end;
	else begin {Proceso padre} 
		a:=a*2;
		Writeln('(Padre) El valor de a es: ', a);
	     end;
    end;
end.