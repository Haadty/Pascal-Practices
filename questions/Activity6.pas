unit Activity6;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Resposta1, Resposta2, Resposta3: string;

begin
  writeln('O Brasil e o pais mais populoso do mundo.');
  write('Isso e: ');
  readln(Resposta1);
  writeln;

  writeln('2 + 2 * 2 = 6');
  write('Isso e: ');
  readln(Resposta2);
  writeln;

  writeln('Programar e divertido.');
  write('Isso e: ');
  readln(Resposta3);
  writeln;
  
  writeln('Gabarito: falso, verdadeiro, verdadeiro.');
  writeln('Suas respostas: ', Resposta1, ', ', Resposta2, ', ', Resposta3);
end;

end.