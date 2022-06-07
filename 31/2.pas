program z2;
type Seq = array[byte] of byte;
var m,n,i: byte;
x: Seq;
Yes: boolean;

procedure Next(var x:Seq; var Yes:boolean);
  var i:byte;
  begin
    i:=n;
    while(i>0) and (x[i]=m) do begin
      x[i]:=1;
      dec(i)
    end;
    if i>0 then begin inc(x[i]); Yes:= true end
    else Yes:= false
    end;
    
Begin
  
  writeln('введите m,n');
  readln(m,n);
  
  for i:=1 to N do X[i]:=1;
  repeat
    for i:=1to N do write(X[i]); write('.');
    Next(X, Yes);
  until not Yes;
    
  end.