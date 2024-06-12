unit Activity38;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numeros: array[1..10] of integer;
  i: integer;

begin
  writeln('Digite 10 numeros');

  for i := 1 to 10 do
   begin
    write('Numero ', i, ': ');
    readln(numeros[i]);
   end;

  writeln;
  writeln('Ordem original:');

  for i := 1 to 10 do
    write(numeros[i], ' ');

  writeln;
  writeln;
  writeln('Ordem inversa:');
  
  for i := 10 downto 1 do
    write(numeros[i], ' ');
  writeln;  
end;

end.