unit Activity12;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Lado1, Lado2, Lado3: integer;

begin
  writeln('Informe as medidas dos tres lados:');
  write('Lado 1: ');
  readln(Lado1);

  write('Lado 2: ');
  readln(Lado2);

  write('Lado 3: ');
  readln(Lado3);
  writeln;

  if (Lado1 = Lado2) and (Lado2 = Lado3) then
    writeln('Trata-se de um triangulo equilatero.')

  else if (Lado1 = Lado2) or (Lado1 = Lado3) or (Lado2 = Lado3) then
    writeln('Trata-se de um triangulo isosceles.')
    
  else
    writeln('Trata-se de um triangulo escaleno.');

end;

end.