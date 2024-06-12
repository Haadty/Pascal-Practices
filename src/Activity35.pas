unit Activity35;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numero, contador: integer;

begin

contador := 0;

  repeat
    write('Digite um numero: ');
    readln(numero);

    if numero <> 0 then
     begin
     
      if numero > 0 then
        writeln(numero, ' e POSITIVO')

      else
        writeln(numero, ' e NEGATIVO');

      contador := contador + 1;
    end;
   writeln;
  until numero = 0;

  ClrScr;
  writeln('Foram digitados ', contador, ' numeros.');
end;

end.