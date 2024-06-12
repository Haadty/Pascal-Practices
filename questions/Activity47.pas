unit Activity47;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Matriz: array[1..4, 1..4] of integer;
  i, j: integer;
 
begin
  for i := 1 to 4 do
    begin
        writeln('Informe o ', i, ' lado');
        for j := 1 to 4 do
         begin
          read(Matriz[i, j]);
        end;
     ClrScr;  
    end;
 
  readln;
  writeln('A matriz ficou:');
  writeln; 

  for i := 1 to 4 do
   begin
    for j := 1 to 4 do
    begin
      if i = j then
        write('X')
      else
        write(Matriz[i, j]);
      write(' ');
    end;
    writeln;
  end;
end;

end.