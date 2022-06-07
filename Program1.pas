//произведение отрицательных (доп зад)

type ukaz=^stack;
   stack=record;
   inf:integer;
   next:ukaz;
   end;

Var

   top, kon: ukaz;
   x, value: integer;

   procedure create;
             begin
             
                 top:= nil;
                 while true do
                       begin
                       

                            readln(value);
                            
                            if value = 0 then exit;

                            New(kon);
                            kon^.inf:=value;
                            kon^.next:=top;
                            top:=kon;
                 end;
             
   end;
   
   procedure output;
             begin
             
                 kon:=top;
                 write('Стек = ');
                 while kon <> nil do
                       begin
                            write(kon^.inf:7);
                            kon:= kon^.next;
                            end;
                            
                       writeln;
                       
             
             end;
             
   procedure sum_all;
             Var s:integer;

             begin
             
                  x:=0;
                  kon:=top;
                  
                  while kon <> nil do
                        begin
                        
                             x:= x+kon^.inf;
                             kon:=kon^.next;
                        
                        end;
                        
                        writeln('Сумма = ', x);
             
             end;
             
             
   procedure max;
             Var
                max: integer;
                
             begin
             
                max:= -32000;
                kon:= top;
                
                while kon <> nil do
                      begin
                      
                           if kon^.inf > max then
                              max:=kon^.inf;
                              kon:=kon^.next;
                              
                              end;
                              
                        writeln('максимальный элемент = ', max);

                        kon := top;

                        while kon <> nil do
                        begin
                             kon^.inf := kon^.inf + max;
                             kon := kon^.next;
                        end;

             end;
             
    procedure pr_negative;
              Var
                 pr:integer;
              begin
              
                   pr:= 1;
              
              kon := top;
                  while kon <> nil do
                      begin

                           if kon^.inf < 0 then pr:= pr * kon^.inf;
                              kon:=kon^.next;


                              end;
                              
                              if pr = 1 then writeln('Отрицательных нет')
                              
                              else writeln('Произведение отрицательных = ', pr);

              
              end;
             
             
Begin

create;
output;

sum_all;
max;

output;
pr_negative;

End.