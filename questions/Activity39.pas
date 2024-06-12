unit Activity39;

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
  soma, i: integer;
  media: real;

begin
  writeln('Digite 10 numeros');

  soma := 0;

  for i := 1 to 10 do
   begin
    write(i, ': ');
    readln(numeros[i]);
    soma := soma + numeros[i];
   end;

  media := soma / 10;
  
  writeln;  
  writeln('A media e ', media:0:1);
end;

end.