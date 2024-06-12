unit Activity31;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  num, i, soma: integer;

begin
  writeln('Digite um numero:');
  readln(num);
  writeln;

  soma := 0;

  for i := 1 to num do
   begin
     soma := soma + i;
   end;

  writeln('A soma dos numeros e igual a ', soma, '.');
end;

end.