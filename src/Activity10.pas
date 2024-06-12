unit Activity10;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  AcumuladoDia: real;
  NumPagantesNormais, NumEstudantes: integer;
  ValorPassagem: real = 30;
  PercentualPagantesNormais: real = 0.55;
  PercentualEstudantes: real = 0.45;

begin
  write('Qual o acumulado do dia? ');
  readln(AcumuladoDia);
  writeln;

  NumPagantesNormais := Round((AcumuladoDia * PercentualPagantesNormais) / ValorPassagem);

  NumEstudantes := Round((AcumuladoDia * PercentualEstudantes) / (ValorPassagem / 2));
  
  writeln('Foram ', NumPagantesNormais, ' pagantes normais.');
  writeln('Foram ', NumEstudantes, ' estudantes.');
end;

end.