unit Activity1;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  PrimeiroNome, SegundoNome: string;
  
begin
  write('Digite seu primeiro nome: ');
  readln(PrimeiroNome);
  writeln;

  write('Digite seu segundo nome: ');
  readln(SegundoNome);
  writeln;
  
  writeln('Resultado: ', SegundoNome, ', ', PrimeiroNome, '.');
end;

end.
