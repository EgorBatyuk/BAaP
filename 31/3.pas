program z3;
type razb = array[byte] of byte;
var n,i,j,m: byte;
x:razb;

procedure next(var x:razb; var m:byte);
  var i,j:byte;
  s:word;
  
  begin
    i:=m-1;
    s:=x[m];
    while (i>1) and (x[i-1]<=x[i]) do begin
      s:=s+x[i];
      dec(i);
    end;
    inc(x[i]);
    m:=i+s-1;
    for j:=i+1 to m do x[j]:=1;
  end;
  
Begin
  write('n = ');
  readln(n);
  m:=n;
  for i:=1 to m do x[i]:=1;
  write('(');
  for i:=1 to m do write(x[i], '');
  write(')');
  
  repeat 
    next(x,m);
    write('(');
    for i:=1 to m do write(x[i], '');
    write(')');
    if m=3 then for i:=1 to m do write(x[i], '');
    
  until m=1;
  writeln;
end.