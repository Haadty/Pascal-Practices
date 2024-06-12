unit Activity15;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Idade, Peso: integer;
  FezTatuagemStr, IngeriuAlcoolStr: string;
  FezTatuagem, IngeriuAlcool: boolean;

begin
  write('Qual sua idade? ');
  readln(Idade);

  if (Idade < 19) or (Idade > 69) then
  begin
    writeln;
    writeln('Infelizmente, você não pode ser doador.');
    Exit;
  end;

  write('Qual seu peso? ');
  readln(Peso);

  if Peso < 50 then
  begin
    writeln;
    writeln('Infelizmente, você não pode ser doador.');
    Exit;
  end;

  write('Você fez alguma tatuagem no último ano (VERDADEIRO ou FALSO)? ');
  readln(FezTatuagemStr);

  FezTatuagemStr := UpperCase(FezTatuagemStr);

  if FezTatuagemStr = 'VERDADEIRO' then
    FezTatuagem := True
    
  else if FezTatuagemStr = 'FALSO' then
    FezTatuagem := False
    
  else
  begin
    writeln;
    writeln('Resposta inválida. Por favor, responda com "VERDADEIRO" ou "FALSO".');
    Exit;
  end;

  if FezTatuagem then
  begin
    writeln;
    writeln('Infelizmente, você não pode ser doador.');
    Exit;
  end;

  write('Você ingeriu álcool nas últimas 12 horas (VERDADEIRO ou FALSO)? ');
  readln(IngeriuAlcoolStr);

  IngeriuAlcoolStr := UpperCase(IngeriuAlcoolStr);

  if IngeriuAlcoolStr = 'VERDADEIRO' then
    IngeriuAlcool := True

  else if IngeriuAlcoolStr = 'FALSO' then
    IngeriuAlcool := False

  else
  begin
    writeln;
    writeln('Resposta inválida. Por favor, responda com "VERDADEIRO" ou "FALSO".');
    Exit;
  end;

  if IngeriuAlcool then
  begin
    writeln;
    writeln('Infelizmente, você não pode ser doador.');
    Exit;
  end;

  writeln;
  writeln('Parabéns, você pode doar sangue.');
end;

end.