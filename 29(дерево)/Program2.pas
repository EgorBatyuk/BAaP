type
  BT = longint;
  U = ^BinTree;
  BinTree = record
    inf: BT;
    l, r: U;
  end;

procedure create(val: BT; var tree: U);
begin
  if tree = nil then
  begin
    New(tree);
    tree^.inf := val;
    tree^.l := nil;
    tree^.r := nil;
  end
  else
    if val < tree^.inf then create(val, tree^.l)
    else create(val, tree^.r);
end;

procedure print_tree(tree: U);
begin
  if tree <> nil then
  begin
    print_tree(tree^.l);
    write(tree^.inf, ' ');
    print_tree(tree^.r);
  end;
end;

procedure print_tree_straight(tree: U);
begin
  if tree <> nil then
  begin
    print_tree_straight(tree^.l);
    print_tree_straight(tree^.r);
    write(tree^.inf, ' ');
  end
end;

procedure print_tree_revers(tree:U);
  begin
    if tree <> nil then
      begin
        print_tree_revers(tree^.l);
        print_tree_revers(tree^.r);
        write(tree^.inf:6);
      end;
  end;

var
  chose, n, i: integer;
  elem: BT;
  tree: U;
  run: boolean;

begin
  run := true;

  while run do
  begin
     writeln('1. Создание');
     writeln('2. Вывод');
     writeln('3. Обход в прямом порядке');
     writeln('4. Обход в обратном порядке');

     write('Введите номер пункта: ');
     readln(chose);

    if chose = 1 then
    begin
      write('Кол-во элементов: ');
      readln(n);

      for i := 1 to n do
      begin
        write('Элемент ', i, ': ');
        readln(elem);
        create(elem, tree);
      end;
    end;

    if (chose = 2) or (chose = 3) then
    begin
      print_tree(tree);
      writeln;
    end;

    if chose = 4 then
    begin
      print_tree_revers(tree);
      writeln;
    end;
  end;
end.