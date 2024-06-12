unit Activity24;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Sexo: Char;
  IdadeInicioContribuicao, IdadeAposentadoriaMinima: integer;
  PorcentagemBeneficio: real;

begin
  write('Qual seu sexo (M/F)? ');
  readln(Sexo);
  writeln;

  write('Com que idade comecou a contribuir? ');
  readln(IdadeInicioContribuicao);
  writeln;

  if (Sexo = 'M') then
   begin
    IdadeAposentadoriaMinima := 65;
    PorcentagemBeneficio := ((IdadeInicioContribuicao + 40) - IdadeAposentadoriaMinima) * 2.5;
   end

  else if (Sexo = 'F') then
   begin
    IdadeAposentadoriaMinima := 62;
    PorcentagemBeneficio := ((IdadeInicioContribuicao + 40) - IdadeAposentadoriaMinima) * 2.5;
   end

  else
   begin
    writeln('Sexo invalido.');
    Exit;
   end;

  writeln('Voce so tera direito a se aposentar aos ', IdadeAposentadoriaMinima, ' anos.');
  writeln('Com essa idade voce tera direito a ', PorcentagemBeneficio:0:1, '% do beneficio.');

  if (PorcentagemBeneficio >= 100) then
    writeln('Voce precisa trabalhar ate os ', (IdadeInicioContribuicao + 40), ' anos para ter direito a 100% do beneficio.')
    
  else
    writeln('Voce precisa trabalhar ate os ', (IdadeInicioContribuicao + 40 + (100 - PorcentagemBeneficio) / 2.5):0:0, ' anos para ter direito a 100% do beneficio.');
end;

end.