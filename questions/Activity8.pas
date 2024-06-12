unit Activity8;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  DistanciaKM, DistanciaMetros, NumPassos: real;
  PassoPorMetro: real = 1 / 0.82;

begin
  write('Qual a distancia em KM? ');
  readln(DistanciaKM);
  writeln;

  DistanciaMetros := DistanciaKM * 1000;

  NumPassos := DistanciaMetros * PassoPorMetro;
  
  writeln(DistanciaKM:0:2, ' km e equivalente a ', round(NumPassos), ' passos.');
end;

end.