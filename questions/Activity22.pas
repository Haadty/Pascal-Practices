unit Activity22;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Codigo, Quantidade: integer;
  ValorUnitario, ValorTotal: real;

begin
  write('Qual o codigo do salgado? ');
  readln(Codigo);
  writeln;

  write('Qual a quantidade de salgados? ');
  readln(Quantidade);
  writeln;

  case Codigo of
    1: ValorUnitario := 0.50; 
    2: ValorUnitario := 0.75; 
    3: ValorUnitario := 0.40; 
    4: ValorUnitario := 0.80; 

  else
    begin
      writeln('Codigo não reconhecido.');
      exit;
    end;
  end;

  ValorTotal := ValorUnitario * Quantidade;
  
  writeln('Sua conta foi ', ValorTotal:0:2, ' reais.');
end;

end.