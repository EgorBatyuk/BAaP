program z1;
type pere = array[byte] of byte;
var n,j,i: byte;
x: pere;
yes: boolean;

procedure next(var x:pere; var yes:boolean);
  var i: byte;
    procedure swap(var a,b:byte);
      var c:byte;
      begin 
        c:=a;
        a:=b;
        b:=c;
      end;
Begin
  i:=n-1;
 
  while (i>0) and (x[i]>x[i+1]) do dec(i);
  
  if i>0 then begin
    j:=i+1;
    while (j<n) and (x[j+1]>x[i]) do inc(j);
    swap(x[i], x[j]);

    for var j:=i+1 to (n+i) div 2 do swap(x[j], x[n-j+i+1]);
    yes:=true;
    end
    else
      yes:=false;
    end;
    begin 
      n:=3;
      for i:=1 to n do x[i]:=i;
      repeat
        for i:=1 to n do
          case x[i] of 
            1: write('A');
            2: write('B');
            3: write('C');
          end;
          write('.');
          next(x,yes);
      until not yes;
   
  writeln;
end.