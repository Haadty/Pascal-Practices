unit Activity26;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numero, i: integer;

begin
  writeln('Digite um numero: ');
  readln(numero);
  writeln;

  writeln('Numeros impares ate ', numero, ':');

  for i := 1 to numero do
  begin
    if i mod 2 <> 0 then
      write(i, ', ');
  end;
  
  writeln;
end;

end.