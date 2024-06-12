unit Activity11;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  num: integer;

begin
  write('Digite algum numero: ');
  readln(num);
  writeln;
  
  if num mod 2 = 0 then
    writeln(num, ' e Par.')

  else
    writeln(num, ' e Impar.');

end;

end.