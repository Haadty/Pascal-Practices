program Main;

uses
  CRT,
  SysUtils,
  Activity1 in 'src/Activity1.pas',
  Activity2 in 'src/Activity2.pas',
  Activity3 in 'src/Activity3.pas',
  Activity4 in 'src/Activity4.pas',
  Activity5 in 'src/Activity5.pas',
  Activity6 in 'src/Activity6.pas',
  Activity7 in 'src/Activity7.pas',
  Activity8 in 'src/Activity8.pas',
  Activity9 in 'src/Activity9.pas',
  Activity10 in 'src/Activity10.pas',
  Activity11 in 'src/Activity11.pas',
  Activity12 in 'src/Activity12.pas',
  Activity13 in 'src/Activity13.pas',
  Activity14 in 'src/Activity14.pas',
  Activity15 in 'src/Activity15.pas',
  Activity16 in 'src/Activity16.pas',
  Activity17 in 'src/Activity17.pas',
  Activity18 in 'src/Activity18.pas',
  Activity19 in 'src/Activity19.pas',
  Activity20 in 'src/Activity20.pas',
  Activity21 in 'src/Activity21.pas',
  Activity22 in 'src/Activity22.pas',
  Activity23 in 'src/Activity23.pas',
  Activity24 in 'src/Activity24.pas',
  Activity25 in 'src/Activity25.pas',
  Activity26 in 'src/Activity26.pas',
  Activity27 in 'src/Activity27.pas',
  Activity28 in 'src/Activity28.pas',
  Activity29 in 'src/Activity29.pas',
  Activity30 in 'src/Activity30.pas',
  Activity31 in 'src/Activity31.pas',
  Activity32 in 'src/Activity32.pas',
  Activity33 in 'src/Activity33.pas',
  Activity34 in 'src/Activity34.pas',
  Activity35 in 'src/Activity35.pas',
  Activity36 in 'src/Activity36.pas',
  Activity37 in 'src/Activity37.pas',
  Activity38 in 'src/Activity38.pas',
  Activity39 in 'src/Activity39.pas',
  Activity40 in 'src/Activity40.pas',
  Activity41 in 'src/Activity41.pas',
  Activity42 in 'src/Activity42.pas',
  Activity43 in 'src/Activity43.pas',
  Activity44 in 'src/Activity44.pas',
  Activity45 in 'src/Activity45.pas',
  Activity46 in 'src/Activity46.pas',
  Activity47 in 'src/Activity47.pas',
  Activity48 in 'src/Activity48.pas';

procedure ExecuteActivity(numero: Integer);
  begin
    case numero of
      1: Activity1.Main;
      2: Activity2.Main;
      3: Activity3.Main;
      4: Activity4.Main;
      5: Activity5.Main;
      6: Activity6.Main;
      7: Activity7.Main;
      8: Activity8.Main;
      9: Activity9.Main;
      10: Activity10.Main;
      11: Activity11.Main;
      12: Activity12.Main;
      13: Activity13.Main;
      14: Activity14.Main;
      15: Activity15.Main;
      16: Activity16.Main;
      17: Activity17.Main;
      18: Activity18.Main;
      19: Activity19.Main;
      20: Activity20.Main;
      21: Activity21.Main;
      22: Activity22.Main;
      23: Activity23.Main;
      24: Activity24.Main;
      25: Activity25.Main;
      26: Activity26.Main;
      27: Activity27.Main;
      28: Activity28.Main;
      29: Activity29.Main;
      30: Activity30.Main;
      31: Activity31.Main;
      32: Activity32.Main;
      33: Activity33.Main;
      34: Activity34.Main;
      35: Activity35.Main;
      36: Activity36.Main;
      37: Activity37.Main;
      38: Activity38.Main;
      39: Activity39.Main;
      40: Activity40.Main;
      41: Activity41.Main;
      42: Activity42.Main;
      43: Activity43.Main;
      44: Activity44.Main;
      45: Activity45.Main;
      46: Activity46.Main;
      47: Activity47.Main;
      48: Activity48.Main;
    else
      writeln('Opcao invalida.');
    end;
 end;

procedure DisplayMenu;

  var
    Opcao: Integer;
    
begin
  repeat
    ClrScr;
    writeln('Digite o numero da atividade (de 1 ate 48, digite 0 para encerrar):');
    readln(Opcao);

    if (Opcao > 0) and (Opcao <= 48) then
    begin
      ClrScr;
      writeln('Atividade ', Opcao, ':');
      writeln;
      ExecuteActivity(Opcao);
    end
    else if Opcao = 0 then 
    begin
      writeln;
      writeln('Encerrando o programa.');
    end
    else 
    begin
      writeln;
      writeln('Opcao invalida. Pressione Enter para tentar novamente.');
      readln;
    end;

    if (Opcao > 0) and (Opcao <= 48) then
    begin
      writeln;
      writeln('Pressione Enter para voltar ao menu...');
      readln;
    end;

  until Opcao = 0;
end;

begin
  DisplayMenu;
end.