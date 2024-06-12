unit Activity41;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Nomes: array[1..4] of string[20];
  NomePesquisado: string[20];
  i: integer;
  Encontrado: boolean;

begin
 writeln('Digite quatro nomes:');

 for i := 1 to 4 do
  begin
    write('Nome ', i, ': ');
    readln(Nomes[i]);
   end;
  ClrScr;

  writeln('Digite o nome que quer pesquisar: ');
  readln(NomePesquisado);

  Encontrado := false;

  for i := 1 to 4 do
   begin
    if Nomes[i] = NomePesquisado then
     begin
      Encontrado := true;
      break;
    end;
  end;
 writeln; 

  if Encontrado then
    writeln(NomePesquisado, ' esta entre os cadastrados')

  else
    writeln(NomePesquisado, ' nao esta entre os cadastrados');
end;

end.