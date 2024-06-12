unit Activity20;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Mes: string;
  Dias: integer;

begin
  write('Digite um mes: ');
  readln(Mes);
  writeln;

  Mes := LowerCase(Mes);

  case Mes of
    'janeiro': Dias := 31;
    'marco': Dias := 31;
    'abril': Dias := 30;
    'maio': Dias := 31;
    'junho': Dias := 30;
    'julho': Dias := 31;
    'agosto': Dias := 31;
    'setembro': Dias := 30;
    'outubro': Dias := 31;
    'novembro': Dias := 30;
    'dezembro': Dias := 31;
    'fevereiro': begin
                   if IsLeapYear(YearOf(Now)) then
                     Dias := 29
                   else
                     Dias := 28;
                 end;
     else begin
           writeln('Mes invalido.');
           exit;
         end;
     end;

  writeln(Mes, ' tem ', Dias, ' dias.');
    
end;

end.