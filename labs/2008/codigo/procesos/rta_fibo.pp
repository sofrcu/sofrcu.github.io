program fibonacci;

Uses oldlinux;

var
    pid: Longint;
    k,n,i,j,t: Integer;

begin
  n := 10;
  i:=0; j:=1;
  
  for k:=0 to n do begin    
    pid := Fork;    
    if pid = 0 then begin {hijo}
	if k < 2 then Write(k, ' ')
        else begin
	    t := i + j;
	    i := j;
	    j := t;
	    Write(j, ' ');
	end;
     end
    else begin {padre}
	WaitProcess(pid);
	break;
     end;    
  end;
  
  ReadLn(k);
end.
