unit Activity18;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  num1, num2, num3, temp: integer;

begin
  writeln('Digite os tres numeros: ');
  write('Numero 1: ');
  readln(num1);

  write('Numero 2: ');
  readln(num2);

  write('Numero 3: ');
  readln(num3);
  writeln;

  if num1 > num2 then
   begin
    temp := num1;
    num1 := num2;
    num2 := temp;
   end;
  
  if num1 > num3 then
   begin
    temp := num1;
    num1 := num3;
    num3 := temp;
   end;
  
  if num2 > num3 then
   begin
    temp := num2;
    num2 := num3;
    num3 := temp;
   end;

  writeln('Os numeros em ordem crescente sao: ', num1, ', ', num2, ', ', num3);
end;

end.