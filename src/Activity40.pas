unit Activity40;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Nomes: array[1..5] of string[20];
  Telefones: array[1..5] of string[10];
  Posicao, i: integer;

begin
 for i := 1 to 5 do
  begin
    write('Digite o nome ', i, ': ');
    readln(Nomes[i]);

    write('Digite o telefone ', i, ': ');
    readln(Telefones[i]);
    writeln;  
  end;
 ClrScr;

  repeat
    write('Digite uma posicao: ');
    readln(Posicao);

    if (Posicao >= 1) and (Posicao <= 5) then
      writeln(Nomes[Posicao], ', ', Telefones[Posicao])

    else if Posicao <> -1 then
      writeln('Essa posicao nao e valida');

    writeln;  
  until Posicao = -1;
end;

end.