type mas = array [1..8] of integer;
var start: integer;
type gg = array [1..8, 1..8] of integer;
const GR: gg =
(
 (0, 1, 2, 3, 4, 5, 6, 7, 8)
 (0, 3, 6, 2, 4, 0, 0, 0, 0),
 (3, 0, 3, 6, 5, 0, 4, 0, 0),
 (4, 3, 0, 4, 2, 3, 0, 0, 0),
 (2, 0, 4, 0, 0, 3, 0, 0, 2),
 (0, 1, 2, 0, 0, 1, 3, 4, 5),
 (0, 0, 3, 3, 1, 0, 0, 0, 6),
 (0, 4, 0, 0, 3, 0, 0, 4, 0),
 (0, 0, 0, 0, 4, 0, 4, 0, 3),
 (0, 0, 0, 2, 5, 6, 0, 3, 0),
 (0, 0, 0, 0, 0, 0, 1, 7, 3)
);

procedure Dejkstra2(GR: gg; st: integer);
var
  count, index, i, u, m, min: integer;
  distance: mas;
  visited: array [1..10] of boolean;
begin
  m := st;
  
  for i := 1 to 10 do
  begin
    distance[i] := 10000;
    visited[i] := false;
  end;
  
  distance[st] := 0;
  
  for count := 1 to 9 do
  begin
    min := 10000;
    
    for i := 1 to 10 do
      if (not visited[i]) and (distance[i] <= min) then
      begin
        min := distance[i];
        index := i;
      end;

    u := index;
    visited[u] := true;

    for i := 1 to 10 do
      if (not visited[i]) and (GR[u, i] <> 0) and (distance[u] <> 10000) and (distance[u] + GR[u, i] < distance[i]) then
        distance[i] := distance[u] + GR[u, i];
  end;
  
  writeln('Список вершин');
  for i := 1 to 10 do
    if distance[i] <> 10000
      then writeln(m, '>', i, '=', distance[i])
      else writeln(m, '>', i, '=', 'нет путей');
end;

begin
  writeln('Выберите вершину'); read(start);
  Dejkstra2(GR, start);
end.