unit Activity4;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  SalarioTotal, HorasPorDia, SalarioPorHora: real;
  
begin
  write('De quanto e seu salario? ');
  readln(SalarioTotal);
  writeln;

  write('Quantas horas voce trabalha por dia? ');
  readln(HorasPorDia);
  writeln;

  SalarioPorHora := SalarioTotal / (30 * HorasPorDia);
  
  writeln('Considerando um mes de 30 dias, voce recebe R$ ', SalarioPorHora:0:2, ' reais por hora.');
end;

end.