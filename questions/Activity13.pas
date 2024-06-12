unit Activity13;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Peso, Altura: real;
  IMC: real;
  Resultado: string;

begin
  write('Qual seu peso? ');
  readln(Peso);

  write('Qual sua altura? ');
  readln(Altura);
  writeln;

  IMC := Peso / (Altura * Altura);

  writeln('IMC = ', IMC:0:2, '.');

  if IMC < 17 then
    Resultado := 'Muito abaixo do peso'

  else if (IMC >= 17) and (IMC < 18.5) then
    Resultado := 'Abaixo do peso'

  else if (IMC >= 18.5) and (IMC < 25) then
    Resultado := 'Peso normal'

  else if (IMC >= 25) and (IMC < 30) then
    Resultado := 'Acima do peso'

  else if (IMC >= 30) and (IMC < 35) then
    Resultado := 'Obesidade Grau 1'

  else if (IMC >= 35) and (IMC < 40) then
    Resultado := 'Obesidade Grau 2 (Severa)'

  else
    Resultado := 'Obesidade Grau 3 (Morbida)';

  writeln('Situacao: ', Resultado);
end;

end.