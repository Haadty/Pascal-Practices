unit Activity46;

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
  i, j, SomaDiagonal: integer;
 
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
  SomaDiagonal := 0;

  for i := 1 to 4 do
   begin
    SomaDiagonal := SomaDiagonal + Matriz[i, i];
   end;
   
  ClrScr;
  writeln('A soma dos elementos da diagonal principal e: ', SomaDiagonal, '.');
end;

end.