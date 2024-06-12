unit Activity7;

interface

procedure Main;

implementation

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Main;

var
  Preco1, Preco2, Preco3, TotalCompra, ValorDesconto, TotalPagar: real;
  Desconto: real = 0.2;

begin
  write('Digite o preco do primeiro item: ');
  readln(Preco1);
  writeln;

  write('Digite o preco do segundo item: ');
  readln(Preco2);
  writeln;

  write('Digite o preco do terceiro item: ');
  readln(Preco3);
  writeln;

  TotalCompra := Preco1 + Preco2 + Preco3;
  
  ValorDesconto := TotalCompra * Desconto;

  TotalPagar := TotalCompra - ValorDesconto;

  writeln('O total das compras foi ', TotalCompra:0:2, ' reais.');
  writeln('O desconto vai ser de ', ValorDesconto:0:2, ' reais.');
  writeln('O cliente deve pagar ', TotalPagar:0:2, ' reais.');
end;

end.