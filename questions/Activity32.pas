unit Activity32;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  idade, i: integer;
  crianca, preAdolescente, adolescente, adulto, idoso: integer;

begin
  crianca := 0;
  preAdolescente := 0;
  adolescente := 0;
  adulto := 0;
  idoso := 0;

  for i := 1 to 10 do
   begin
   
    write('Digite a idade pessoa ', i, ': ');
    readln(idade);
    ClrScr;

    if (idade >= 0) and (idade <= 9) then
      inc(crianca)

    else if (idade >= 10) and (idade <= 14) then
      inc(preAdolescente)

    else if (idade >= 15) and (idade <= 21) then
      inc(adolescente)

    else if (idade >= 22) and (idade <= 64) then
      inc(adulto)

    else if idade >= 65 then
      inc(idoso);
  end;

  writeln('Quantidade de criancas: ', crianca);
  writeln('Quantidade de pre-adolescentes: ', preAdolescente);
  writeln('Quantidade de adolescentes: ', adolescente);
  writeln('Quantidade de adultos: ', adulto);
  writeln('Quantidade de idosos: ', idoso);
end;

end.