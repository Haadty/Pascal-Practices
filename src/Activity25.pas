unit Activity25;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numero, soma: integer;
  continuar: char;

begin
  writeln('Digite um numero: ');
  readln(numero);

  soma := 0;
  continuar := '';
  soma := soma + numero;

  repeat
    ClrScr;
    writeln('Quer fornecer outro (s/n)? ');
    readln(continuar);

    if continuar = 's' then
     begin
      ClrScr;
      writeln('Digite um numero: ');
      readln(numero);
      soma := soma + numero;
    end;

  until continuar <> 's';
   ClrScr;
   writeln('A soma dos numeros e ', soma);
end;

end.