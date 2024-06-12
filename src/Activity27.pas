unit Activity27;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numeros: array[1..5] of integer;
  i, maior: integer;

begin
  writeln('Digite os cinco numeros:');

  for i := 1 to 5 do
   begin
    readln(numeros[i]);
   end;

   maior := numeros[1]; 

  for i := 2 to 5 do
   begin
    if numeros[i] > maior then
      maior := numeros[i];
   end;
   
  ClrScr;
  writeln('O maior numero foi ', maior, '.');
end;

end.