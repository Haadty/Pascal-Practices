unit Activity9;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  NumPedreiros, HorasParaTerminar: integer;
  HorasParaConstruir: real = 72;
  PedreirosParaMuro: real = 8;

begin
  write('Quantos pedreiros esteo disponiveis? ');
  readln(NumPedreiros);
  writeln;

  HorasParaTerminar := Round((PedreirosParaMuro / NumPedreiros) * HorasParaConstruir); 
  
  writeln('Os ', NumPedreiros, ' pedreiros levam ', HorasParaTerminar, ' horas para terminar o muro.');
end;

end.