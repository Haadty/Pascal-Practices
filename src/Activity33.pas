unit Activity33;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  x, i, a, b, temp: integer;

begin
  write('Qual o valor de X: ');
  readln(x);
  writeln;

  if x <= 0 then
    writeln('Valor de X deve ser maior que 0.')

  else
   begin
    a := 0;
    b := 1;

    write(a);

    if x > 1 then
      write(', ', b);
      
    for i := 3 to x do
     begin
      temp := a + b;

      write(', ', temp);

      a := b;
      b := temp;
    end;
  end;
   writeln;
end;

end.