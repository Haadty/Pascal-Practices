unit Activity19;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Dia1, Mes1, Ano1, Dia2, Mes2, Ano2: integer;
  Data1, Data2: TDateTime;

begin
  writeln('Digite a primeira data: ');

  write('Dia: ');
  readln(Dia1);

  write('Mes: ');
  readln(Mes1);

  write('Ano: ');
  readln(Ano1); 
  writeln;

  writeln('Digite a segunda data: ');

  write('Dia: ');
  readln(Dia2);

  write('Mes: ');
  readln(Mes2);

  write('Ano: ');
  readln(Ano2);
  writeln;

  Data1 := EncodeDate(Ano1, Mes1, Dia1);

  Data2 := EncodeDate(Ano2, Mes2, Dia2);
  
  writeln('As datas em ordem crescente sao: ');

  if Data1 < Data2 then
    writeln(FormatDateTime('dd/mm/yyyy', Data1), ', ', FormatDateTime('dd/mm/yyyy', Data2))

  else
    writeln(FormatDateTime('dd/mm/yyyy', Data2), ', ', FormatDateTime('dd/mm/yyyy', Data1));
    
end;

end.