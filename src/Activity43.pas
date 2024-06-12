unit Activity43;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Caracteres: array[1..5] of char;
  Vogais: array[1..5] of integer;
  i, ContagemVogais: integer;
  temVogal: boolean;

begin
  writeln('Digite as letras:');

  for i := 1 to 5 do
   begin
    readln(Caracteres[i]);
  end;

  ContagemVogais := 0;

  for i := 1 to 5 do
   begin

    temVogal := (Caracteres[i] = 'a') or 
                (Caracteres[i] = 'e') or 
                (Caracteres[i] = 'i') or 
                (Caracteres[i] = 'o') or 
                (Caracteres[i] = 'u');

    if temVogal then
     begin
      ContagemVogais := ContagemVogais + 1;
      Vogais[ContagemVogais] := i;
    end;
  end;

  writeln; 
  writeln('Foram lidas ', ContagemVogais, ' vogais.');

  if ContagemVogais > 0 then
   begin
    write('As vogais estao nas posicoes: ');

     for i := 1 to ContagemVogais - 1 do
      begin
       write(Vogais[i], ', ');
     end;
    writeln(Vogais[ContagemVogais], '.');
  end

  else
   begin
    writeln('Nao ha vogais no vetor.');
  end;
end;

end.