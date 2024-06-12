unit Activity5;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Comprimento, Largura, Area, CustoConstrucao: real;
  CustoMetroQuadrado: real = 850; 

begin
  write('Digite o comprimento do terreno (em metros): ');
  readln(Comprimento);
  writeln;

  write('Digite a largura do terreno (em metros): ');
  readln(Largura);
  writeln;

  Area := Comprimento * Largura;

  CustoConstrucao := Area * CustoMetroQuadrado;

  writeln('A construcao custara R$ ', CustoConstrucao:0:2);
end;

end.