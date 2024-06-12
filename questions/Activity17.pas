unit Activity17;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Mes: integer;
  NomeMes: string;

begin
  write('Digite o mes em formato numerico: ');
  readln(Mes);
  writeln;
  
  if (Mes >= 1) and (Mes <= 12) then
  begin
    NomeMes := FormatDateTime('mmmm', EncodeDate(2000, Mes, 1));
    writeln(NomeMes);
  end

  else
    writeln('Mes invalido. Digite um numero entre 1 e 12.');
  
end;

end.