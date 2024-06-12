unit Activity42;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Numeros: array[1..10] of integer;
  Numero, Contagem, i: integer;

begin
 writeln('Digite 10 numeros:');

  for i := 1 to 10 do
   begin
    write(i, ': ');
    readln(Numeros[i]);
  end;

  Numero := Numeros[10];
  Contagem := 0;

  for i := 1 to 9 do
   begin
    if Numeros[i] = Numero then
      Contagem := Contagem + 1;
  end;
  
  writeln; 
  writeln(Numero, ' foi lido ', Contagem, ' vezes');
end;

end.