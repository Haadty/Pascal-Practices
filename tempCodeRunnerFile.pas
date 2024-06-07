procedure Atividade46;
var
  Matriz: array[1..4, 1..4] of integer;
  i, j, SomaDiagonal: integer;
begin
  ClrScr;
  writeln('Informe os dados:');
  for i := 1 to 4 do
  begin
    for j := 1 to 4 do
    begin
      read(Matriz[i, j]);
    end;
  end;
  SomaDiagonal := 0;
  for i := 1 to 4 do
  begin
    SomaDiagonal := SomaDiagonal + Matriz[i, i];
  end;
  ClrScr;
  writeln('A soma dos elementos da diagonal principal e: ', SomaDiagonal, '.');
end;