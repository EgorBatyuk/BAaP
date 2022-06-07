Program lab_32;

Type
    M_int = array[1..9, 1..9] of integer;
    M_Bool = array[1..9] of boolean;
    
Var
  i,j, start: integer;
  visited: M_Bool;
  G: M_Int;
  
  procedure width (visited:M_Bool; u:integer);
    var
      queue: array [1..9] of integer;
      i:integer;
      count, head: integer;
      
    begin
      
      for i:=1 to 9 do queue[i]:=0;
      
      count:=0;
      head:= 0;
      count:= count +1;
      queue[count]:=u;
      visited[u]:=true;
      
      while head<count do
      begin
      head:=head+1;
      u:=queue[head];
      write(u,' ');
      for i:=1 to 9 do
        begin
          if (G[u,i]<>0) and (not visited[i]) then
            begin
              count:=count+1;
              queue[count]:=i;
              visited[i]:=true;
              
            end;
            end;
            end;
       end;
       
Begin
  
  writeln('Введите матрицу смежности');
  
  for i:=1 to 9 do
    begin
        write('Строка', i, ' ');
        for j:=1 to 9 do
      
        read(G[i,j]);
      end;
  
  write('Укажите вершину');
  read(start);
  
  writeln('Матрица смежности');
  for i:=1 to 9 do
    begin
      visited[i]:=false;
      for j:=1 to 9 do
        write(' ', G[i,j]);
      writeln;
    end;
    
    write('Обход графа: ');
    width(visited, start);
  
End.