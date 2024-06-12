unit Activity21;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Idade: integer;
  ValorMensalidade: real = 100;

begin
  write('Qual sua idade? ');
  readln(Idade);
  writeln;

  if Idade < 10 then
    ValorMensalidade := ValorMensalidade + 80

  else if (Idade >= 10) and (Idade <= 30) then
    ValorMensalidade := ValorMensalidade + 50

  else if (Idade > 30) and (Idade <= 50) then
    ValorMensalidade := ValorMensalidade + 95

  else if (Idade > 50) and (Idade <= 60) then
    ValorMensalidade := ValorMensalidade + 110

  else if Idade > 60 then
    ValorMensalidade := ValorMensalidade + 130;

  writeln('Sua mensalidade sera ', ValorMensalidade:0:2, ' reais.');
end;

end.