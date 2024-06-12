unit Activity28;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numAlunos, i: integer;
  nota1, nota2, somaNotas, mediaTurma: real;

begin
  writeln('Informe a quantidade de alunos:');
  readln(numAlunos);

  somaNotas := 0;

  for i := 1 to numAlunos do
   begin
    ClrScr;

    writeln('Digite as notas do aluno ', i, ':');
    writeln;

    writeln('Primeira Nota:');
    readln(nota1);
    writeln;

    writeln('Segunda Nota:');
    readln(nota2);

    somaNotas := somaNotas + (nota1 + nota2) / 2;
   end;

  mediaTurma := somaNotas / numAlunos;
  
  ClrScr;
  writeln('A media da turma foi ', mediaTurma:0:1);
end;

end.