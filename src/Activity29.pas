unit Activity29;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  num, i: integer;
  isPrimo: boolean;

begin
  writeln('Digite um numero:');
  readln(num);
  writeln;

  if num < 2 then
    isPrimo := false

  else
    isPrimo := true;

  for i := 2 to num div 2 do
   begin
    if num mod i = 0 then
     begin
      isPrimo := false;
      break;
    end;
  end;

  if isPrimo then
    writeln(num, ' e primo.')
    
  else
    writeln(num, ' nao e primo.');
end;

end.