program Main;

uses
  SysUtils,
  CRT,
  Activity1 in 'utils/HandleMenu.pas';

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
      HandleMenu.Activities[Opcao];
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
end.
