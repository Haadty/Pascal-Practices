unit Activity36;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  valor, notas100, notas50, notas20, notas10, notas5, notas2, notas1: integer;

begin
  write('Digite um numero inteiro: ');
  readln(valor);
  writeln;

  notas100 := valor div 100;
  valor := valor mod 100;

  notas50 := valor div 50;
  valor := valor mod 50;

  notas20 := valor div 20;
  valor := valor mod 20;

  notas10 := valor div 10;
  valor := valor mod 10;

  notas5 := valor div 5;
  valor := valor mod 5;

  notas2 := valor div 2;
  valor := valor mod 2;

  notas1 := valor;

  writeln('Voce precisa de');

  if notas100 > 0 then
    writeln('Notas de 100 reais: ', notas100);

  if notas50 > 0 then
    writeln('Notas de 50 reais: ', notas50);

  if notas20 > 0 then
    writeln('Notas de 20 reais: ', notas20);

  if notas10 > 0 then
    writeln('Notas de 10 reais: ', notas10);

  if notas5 > 0 then
    writeln('Notas de 5 reais: ', notas5);

  if notas2 > 0 then
    writeln('Notas de 2 reais: ', notas2);
    
  if notas1 > 0 then
    writeln('Notas de 1 real: ', notas1);
end;

end.