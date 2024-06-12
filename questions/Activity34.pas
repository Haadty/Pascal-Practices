unit Activity34;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  login1, senha1, login2, senha2: string;

begin
  writeln('Cadastro do primeiro usuario');
  write('Digite seu login: ');
  readln(login1);
  writeln;

  repeat
    write('Digite sua senha: ');
    readln(senha1);

    if senha1 = login1 then
      ClrScr;
      writeln('Essa senha nao e segura, escolha outra.');
      writeln;

    until senha1 <> login1;
     writeln('Usuario cadastrado.');
     ClrScr;

  writeln('Cadastro do segundo usuario');

  repeat
    write('Digite seu login: ');
    readln(login2);
    writeln;

    if login2 = login1 then
      ClrScr;
      writeln('Voce nao pode usar esse login.');
      writeln;

  until login2 <> login1;
   repeat
    write('Digite sua senha: ');
    readln(senha2);

    if senha2 = login2 then
      writeln('Essa senha nao e segura, escolha outra.');

  until senha2 <> login2;
   ClrScr;
   writeln('Usuario cadastrado.');
end;

end.