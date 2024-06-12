unit Activity48;

interface

procedure Main;

implementation

uses
  CRT;

var
  Jogo: array[1..9] of char;
  i: integer;

procedure VerificarVencedor(const Jogo: array of char);

begin
  if (Jogo[1] = Jogo[2]) and (Jogo[2] = Jogo[3]) and (Jogo[1] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[4] = Jogo[5]) and (Jogo[5] = Jogo[6]) and (Jogo[4] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[7] = Jogo[8]) and (Jogo[8] = Jogo[9]) and (Jogo[7] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[1] = Jogo[4]) and (Jogo[4] = Jogo[7]) and (Jogo[1] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[2] = Jogo[5]) and (Jogo[5] = Jogo[8]) and (Jogo[2] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[3] = Jogo[6]) and (Jogo[6] = Jogo[9]) and (Jogo[3] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[1] = Jogo[5]) and (Jogo[5] = Jogo[9]) and (Jogo[1] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[3] = Jogo[5]) and (Jogo[5] = Jogo[7]) and (Jogo[3] <> ' ') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else
    writeln('Nao ha um vencedor');
end;

procedure Main;

begin
  writeln('Descreva como esta o jogo:');
  for i := 1 to 9 do
  begin
    read(Jogo[i]);
  end;
  ClrScr;
  writeln('Como esta o tabuleiro:');
  writeln;
  for i := 1 to 9 do
  begin
    write(Jogo[i], ' ');
    if i mod 3 = 0 then
      writeln;
  end;
  writeln;
  VerificarVencedor(Jogo);
  readln;
end;

end.
