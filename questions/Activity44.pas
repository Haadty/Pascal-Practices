unit Activity44;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Medias: array[1..5] of real;
  SomaMedias, MediaTurma: real;
  i, AlunosAbaixoMedia: integer;
 
begin
 writeln('Digite as 5 medias:');
 SomaMedias := 0;

   for i := 1 to 5 do
    begin
    readln(Medias[i]);
    SomaMedias := SomaMedias + Medias[i];
  end;

  MediaTurma := SomaMedias / 5;
  AlunosAbaixoMedia := 0;

  for i := 1 to 5 do
   begin
    if Medias[i] < MediaTurma then
      AlunosAbaixoMedia := AlunosAbaixoMedia + 1;
  end;
  
  writeln; 
  writeln(AlunosAbaixoMedia, ' alunos estao abaixo da media.');
end;

end.