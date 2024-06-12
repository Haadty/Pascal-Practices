unit Activity2;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  AnoNascimento, Idade: integer;
  
begin
  write('Digite seu ano de nascimento: ');
  readln(AnoNascimento);
  writeln;

  Idade := YearOf(Now) - AnoNascimento; 

  writeln('Sua idade e ', Idade, '.');
end;

end.