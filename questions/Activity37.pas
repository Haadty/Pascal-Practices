unit Activity37;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  populacaoA, populacaoB, anos: integer;
  taxaCrescimentoA, taxaCrescimentoB: real;

begin
  write('Populacao cidade A = ');
  readln(populacaoA);
  writeln;

  write('Taxa de crescimento cidade A (%) = ');
  readln(taxaCrescimentoA);
  writeln;

  write('Populacao cidade B = ');
  readln(populacaoB);
  writeln;

  write('Taxa de crescimento cidade B (%) = ');
  readln(taxaCrescimentoB);
  writeln;

  anos := 0;

  if (taxaCrescimentoA <= taxaCrescimentoB) then
    writeln('A populacao da cidade A nunca ultrapassara a da cidade B')

  else
   begin
    while (populacaoA <= populacaoB) do
     begin
      anos := anos + 1;
      populacaoA := populacaoA + Round(populacaoA * taxaCrescimentoA / 100);
      populacaoB := populacaoB + Round(populacaoB * taxaCrescimentoB / 100);
    end;
    
     writeln('A populacao da cidade A ultrapassara a da cidade B em ', anos, ' anos');
  end;
end;

end.