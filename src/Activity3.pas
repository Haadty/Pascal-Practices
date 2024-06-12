unit Activity3;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Nota1, Nota2, Nota3: real;
  Media: real;
  
begin
  write('Digite sua primeira nota: ');
  readln(Nota1);
  writeln;

  write('Digite sua segunda nota: ');
  readln(Nota2);
  writeln;

  write('Digite sua terceira nota: ');
  readln(Nota3);
  writeln;

  Media := (Nota1 + Nota2 + Nota3) / 3;
  
  writeln('Sua media foi ', round(Media));
end;

end.