unit Activity23;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  GastoBebidaStr, GastoComidaStr, GastoTransporteStr: string;
  GastoBebida, GastoComida, GastoTransporte: boolean;
  NumPessoas: integer;
  TotalGastos, GastoMedioBebida, GastoMedioComida, GastoMedioTransporte: real;

begin
  write('Voce planeja beber (VERDADEIRO ou FALSO)? ');
  readln(GastoBebidaStr);
  writeln;

  write('Voce planeja comer (VERDADEIRO ou FALSO)? ');
  readln(GastoComidaStr);
  writeln;

  write('Voce planeja contratar transporte (VERDADEIRO ou FALSO)? ');
  readln(GastoTransporteStr);
  writeln;

  write('Quantas pessoas sairao com voce? ');
  readln(NumPessoas);
  writeln;

  GastoBebida := (UpperCase(GastoBebidaStr) = 'VERDADEIRO');
  GastoComida := (UpperCase(GastoComidaStr) = 'VERDADEIRO');
  GastoTransporte := (UpperCase(GastoTransporteStr) = 'VERDADEIRO');

  GastoMedioBebida := 80;
  GastoMedioComida := 60;
  GastoMedioTransporte := 15;
  TotalGastos := 0;

  if GastoBebida then
    TotalGastos := TotalGastos + GastoMedioBebida;

  if GastoComida then
    TotalGastos := TotalGastos + GastoMedioComida;

  if GastoTransporte then
    TotalGastos := TotalGastos + GastoMedioTransporte;

  TotalGastos := TotalGastos * NumPessoas;

  writeln('O gasto estimado da noite e: ', TotalGastos:0:2, ' reais.');
end;

end.