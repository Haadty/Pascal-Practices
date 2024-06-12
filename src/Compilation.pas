program Compilation;

uses
  SysUtils,
  CRT,
  DateUtils,
  Activity1 in '../questions/Activity1.pas',
  Activity2 in '../questions/Activity2.pas',
  Activity3 in '../questions/Activity3.pas',
  Activity4 in '../questions/Activity4.pas',
  Activity5 in '../questions/Activity5.pas',
  Activity6 in '../questions/Activity6.pas',
  Activity7 in '../questions/Activity7.pas',
  Activity8 in '../questions/Activity8.pas',
  Activity9 in '../questions/Activity9.pas',
  Activity10 in '../questions/Activity10.pas',
  Activity11 in '../questions/Activity11.pas',
  Activity12 in '../questions/Activity12.pas',
  Activity13 in '../questions/Activity13.pas', 
  Activity14 in '../questions/Activity14.pas',
  Activity15 in '../questions/Activity15.pas',
  Activity16 in '../questions/Activity16.pas',
  Activity17 in '../questions/Activity17.pas',
  Activity18 in '../questions/Activity18.pas',
  Activity19 in '../questions/Activity19.pas',
  Activity20 in '../questions/Activity20.pas',
  Activity21 in '../questions/Activity21.pas',
  Activity22 in '../questions/Activity22.pas',
  Activity23 in '../questions/Activity23.pas',
  Activity24 in '../questions/Activity24.pas',
  Activity25 in '../questions/Activity25.pas',
  Activity26 in '../questions/Activity26.pas',
  Activity27 in '../questions/Activity27.pas',
  Activity28 in '../questions/Activity28.pas',
  Activity29 in '../questions/Activity29.pas',
  Activity30 in '../questions/Activity30.pas',
  Activity31 in '../questions/Activity31.pas',
  Activity32 in '../questions/Activity32.pas',
  Activity33 in '../questions/Activity33.pas',
  Activity34 in '../questions/Activity34.pas',
  Activity35 in '../questions/Activity35.pas',
  Activity36 in '../questions/Activity36.pas',
  Activity37 in '../questions/Activity37.pas',
  Activity38 in '../questions/Activity38.pas',
  Activity39 in '../questions/Activity39.pas',

procedure Atividade39;
var
  numeros: array[1..10] of integer;
  soma, i: integer;
  media: real;
begin
  ClrScr;
  writeln('Atividade 39:');
  writeln;
  writeln('Digite 10 numeros');
  soma := 0;
  for i := 1 to 10 do
  begin
    write(i, ': ');
    readln(numeros[i]);
    soma := soma + numeros[i];
  end;
  media := soma / 10;
  writeln;  
  writeln('A media e ', media:0:1);
end;

procedure Atividade40;
var
  Nomes: array[1..5] of string[20];
  Telefones: array[1..5] of string[10];
  Posicao, i: integer;
begin
  ClrScr;
  writeln('Atividade 40:');
  writeln;
  for i := 1 to 5 do
  begin
    write('Digite o nome ', i, ': ');
    readln(Nomes[i]);
    write('Digite o telefone ', i, ': ');
    readln(Telefones[i]);
    writeln;  
  end;
  ClrScr;
  repeat
    write('Digite uma posicao: ');
    readln(Posicao);
    if (Posicao >= 1) and (Posicao <= 5) then
      writeln(Nomes[Posicao], ', ', Telefones[Posicao])
    else if Posicao <> -1 then
      writeln('Essa posicao nao e valida');
    writeln;  
  until Posicao = -1;
end;

procedure Atividade41;
var
  Nomes: array[1..4] of string[20];
  NomePesquisado: string[20];
  i: integer;
  Encontrado: boolean;
begin
  ClrScr;
  writeln('Atividade 41:');
  writeln;
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

procedure Atividade42;
var
  Numeros: array[1..10] of integer;
  Numero, Contagem, i: integer;
begin
  ClrScr;
  writeln('Atividade 42:');
  writeln;
  writeln('Digite 10 numeros:');
  for i := 1 to 10 do
  begin
    write(i, ': ');
    readln(Numeros[i]);
  end;
  Numero := Numeros[10];
  Contagem := 0;
  for i := 1 to 9 do
  begin
    if Numeros[i] = Numero then
      Contagem := Contagem + 1;
  end;
  writeln; 
  writeln(Numero, ' foi lido ', Contagem, ' vezes');
end;

procedure Atividade43;
var
  Caracteres: array[1..5] of char;
  Vogais: array[1..5] of integer;
  i, ContagemVogais: integer;
  temVogal: boolean;
begin
  ClrScr;
  writeln('Atividade 43:');
  writeln;
  writeln('Digite as letras:');
  for i := 1 to 5 do
  begin
    readln(Caracteres[i]);
  end;
  ContagemVogais := 0;
  for i := 1 to 5 do
  begin
    temVogal := (Caracteres[i] = 'a') or (Caracteres[i] = 'e') or (Caracteres[i] = 'i') or
                (Caracteres[i] = 'o') or (Caracteres[i] = 'u');
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

procedure Atividade44;
var
  Medias: array[1..5] of real;
  SomaMedias, MediaTurma: real;
  i, AlunosAbaixoMedia: integer;
begin
  ClrScr;
  writeln('Atividade 44:');
  writeln;
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

procedure Atividade45;
var
  Medias: array[1..5] of real;
  SomaMedias, MediaTurma: real;
  i, AlunosAbaixoMedia: integer;
begin
  ClrScr;
  writeln('Atividade 45:');
  writeln;
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

procedure Atividade46;
var
  Matriz: array[1..4, 1..4] of integer;
  i, j, SomaDiagonal: integer;
begin
  ClrScr;
  writeln('Atividade 46:');
  writeln;
  for i := 1 to 4 do
  begin
    writeln('Informe o ', i, ' lado');
    for j := 1 to 4 do
    begin
      read(Matriz[i, j]);
    end;
    ClrScr;
  end;
  readln;
  SomaDiagonal := 0;
  for i := 1 to 4 do
  begin
    SomaDiagonal := SomaDiagonal + Matriz[i, i];
  end;
  ClrScr;
  writeln('A soma dos elementos da diagonal principal e: ', SomaDiagonal, '.');
end;

procedure Atividade47;
var
  Matriz: array[1..4, 1..4] of integer;
  i, j: integer;
begin
  ClrScr;
  writeln('Atividade 47:');
  writeln;
  for i := 1 to 4 do
  begin
    writeln('Informe o ', i, ' lado');
    for j := 1 to 4 do
    begin
      read(Matriz[i, j]);
    end;
  ClrScr;  
  end;
  readln;
  writeln('A matriz ficou:');
  writeln; 
  for i := 1 to 4 do
  begin
    for j := 1 to 4 do
    begin
      if i = j then
        write('X')
      else
        write(Matriz[i, j]);
      write(' ');
    end;
    writeln;
  end;
end;

procedure Atividade48;
var
  Jogo: array[1..9] of char;
  i: integer;
procedure VerificarVencedor(const Jogo: array of char);
begin
  if (Jogo[1] = Jogo[2]) and (Jogo[2] = Jogo[3]) and (Jogo[1] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[4] = Jogo[5]) and (Jogo[5] = Jogo[6]) and (Jogo[4] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[7] = Jogo[8]) and (Jogo[8] = Jogo[9]) and (Jogo[7] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[1] = Jogo[4]) and (Jogo[4] = Jogo[7]) and (Jogo[1] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[2] = Jogo[5]) and (Jogo[5] = Jogo[8]) and (Jogo[2] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[3] = Jogo[6]) and (Jogo[6] = Jogo[9]) and (Jogo[3] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[1] = Jogo[5]) and (Jogo[5] = Jogo[9]) and (Jogo[1] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else if (Jogo[3] = Jogo[5]) and (Jogo[5] = Jogo[7]) and (Jogo[3] <> 'V') then
  begin
    writeln('Ha um vencedor');
    Exit;
  end
  else
    writeln('Nao ha um vencedor');
end;
begin
  ClrScr; 
  writeln('Atividade 48:');
  writeln;
  writeln('Descreva como esta o jogo:');
  for i := 1 to 9 do
  begin
    read(Jogo[i]);
  end;
  ClrScr;  
  writeln('Como esta o tabuleiro:');
  writeln;
  for i := 1 to 9 do
  begin
    write(Jogo[i], ' ');
    if i mod 3 = 0 then
  end; 
  readln;
  writeln;
  writeln;
  VerificarVencedor(Jogo);
end;

procedure ExibirMenu;
begin
  ClrScr;
  writeln('Digite o numero da atividade (de 1 ate 48, digite 0 para encerrar):');
end;

var
  Opcao: integer;
begin
  repeat
    ExibirMenu;
    readln(Opcao);

  if (Opcao > 0) and (Opcao < 48) then
    begin
     ClrScr;
     writeln('Atividade ', Opcao, ':');
     writeln;
   end;

    case Opcao of
      1: begin
           Activity1.Main;
         end;
      2: begin
           Activity2.Main;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
       3: begin
           Atividade3;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
       4: begin
           Atividade4;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
       5: begin
           Atividade5;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
       6: begin
           Atividade6;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
        7: begin
           Atividade7;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
        end;
         8: begin
           Atividade8;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
         9: begin
           Atividade9;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
        10: begin
            Atividade10;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        11: begin
            Atividade11;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        12: begin
            Atividade12;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        13: begin
            Atividade13;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        14: begin
            Atividade14;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;  
        15: begin
            Atividade15;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        16: begin
            Atividade16;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        17: begin
            Atividade17;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        18: begin
            Atividade18;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        19: begin
            Atividade19;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        20: begin
            Atividade20;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        21: begin
            Atividade21;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        22: begin
            Atividade22;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end; 
        23: begin
            Atividade23;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        24: begin
            Atividade24;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        25: begin
            Atividade25;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        26: begin
            Atividade26;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        27: begin
            Atividade27;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        28: begin
            Atividade28;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        29: begin
            Atividade29;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        30: begin
            Atividade30;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        31: begin
            Atividade31;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        32: begin
            Atividade32;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        33: begin
            Atividade33;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        34: begin
            Atividade34;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        35: begin
            Atividade35;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        36: begin
            Atividade36;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        37: begin
            Atividade37;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        38: begin
            Atividade38;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        39: begin
            Atividade39;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        40: begin
            Atividade40;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        41: begin
            Atividade41;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        42: begin
            Atividade42;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        43: begin
            Atividade43;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        44: begin
            Atividade44;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        45: begin
            Atividade45;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        46: begin
            Atividade46;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
           end; 
        47: begin
            Atividade47;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
        48: begin
            Atividade48;
            writeln;
            writeln('Pressione Enter para voltar ao menu...');
            readln;
          end;
      0: begin
           writeln;
           writeln('Encerrando o programa.');
          end;
      else begin
             writeln;
             writeln('Opcao invalida. Pressione Enter para tentar novamente.');
             readln;
           end;
    end;

if (Opcao > 0) and (Opcao < 48) then
begin
  writeln;
  writeln('Pressione Enter para voltar ao menu...');
  readln;
end;

  until Opcao = 0;
end.