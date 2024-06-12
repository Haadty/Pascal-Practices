unit Activity30;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  numPessoas, i, homens, mulheres: integer;
  sexo: char;
  nome: string;

begin
 writeln('Quantas pessoas?');
 readln(numPessoas);
 ClrScr;

 homens := 0;
 mulheres := 0;


 for i := 1 to numPessoas do
  begin
    writeln('Informe seu sexo (f/m):');
    readln(sexo);
    writeln;

    writeln('Informe seu nome:');
    readln(nome);
    writeln;

   if sexo = 'f' then
    begin
      writeln('Bem vinda sra. ', nome);
      writeln;

      mulheres := mulheres + 1;
    end

  else if sexo = 'm' then
    begin
      writeln('Bem vindo sr. ', nome);
      writeln;

      homens := homens + 1;
    end;
  end;
  
  ClrScr;
  writeln('Homens cumprimentados: ', homens);
  writeln('Mulheres cumprimentadas: ', mulheres);
end;

end.