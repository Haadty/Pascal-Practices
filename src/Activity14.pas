unit Activity14;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  KmPorLitro, LitrosNoCarro, DistanciaDesejada, LitrosNecessarios: real;

begin
  write('Quantos quilometros o carro percorre por litro? ');
  readln(KmPorLitro);

  write('Quantos litros tem no carro atualmente? ');
  readln(LitrosNoCarro);

  write('Qual distancia (em Km) voce deseja percorrer? ');
  readln(DistanciaDesejada);

  LitrosNecessarios := DistanciaDesejada / KmPorLitro;

  if LitrosNecessarios > LitrosNoCarro then
   begin
    writeln;
    writeln('Voce precisa abastecer ', LitrosNecessarios - LitrosNoCarro:0:2, ' litros.');
  end

  else
   begin
    writeln;
    writeln('Voce nao precisa abastecer.');
  end;
  
end;

end.