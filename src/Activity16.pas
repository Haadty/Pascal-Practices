unit Activity16;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  VelocidadePermitida, ExcessoVelocidade, VelocidadeMotorista: real;

begin
  write('Informe a velocidade permitida: ');
  readln(VelocidadePermitida);
  writeln;

  write('Informe a velocidade do motorista: ');
  readln(VelocidadeMotorista);
  writeln;

  if VelocidadeMotorista <= VelocidadePermitida then
   begin
    writeln('Nao precisa pagar multa.');
   end
  else
   begin

    ExcessoVelocidade := ((VelocidadeMotorista - VelocidadePermitida) / VelocidadePermitida) * 100;

    if ExcessoVelocidade <= 20 then
     begin
      writeln('(Infracao media) Multa de R$ 85,00 + 4 pontos.');
     end

    else if ExcessoVelocidade <= 50 then
     begin
      writeln('(Infracao grave) Multa de R$ 127,00 + 5 pontos.');
     end

    else
     begin
      writeln('(Infracao gravissima) Multa de R$ 574,00 + 7 pontos + apreensao da carteira + suspensao do direito de dirigir.');
     end;
   end;
  
end;

end.