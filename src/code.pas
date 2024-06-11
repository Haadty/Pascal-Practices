program Tarefa;

uses
  SysUtils,
  CRT,
  DateUtils;

procedure Atividade1;
var
  PrimeiroNome, SegundoNome: string;
begin
  ClrScr;
  writeln('Atividade 1:');
  writeln;
  write('Digite seu primeiro nome: ');
  readln(PrimeiroNome);
  writeln;
  write('Digite seu segundo nome: ');
  readln(SegundoNome);
  writeln;
  writeln('Resultado: ', SegundoNome, ', ', PrimeiroNome, '.');
end;

procedure Atividade2;
var
  AnoNascimento, Idade: integer;
begin
  ClrScr;
  writeln('Atividade 2:');
  writeln;
  write('Digite seu ano de nascimento: ');
  readln(AnoNascimento);
  Idade := YearOf(Now) - AnoNascimento; 
  writeln;
  writeln('Sua idade e ', Idade, '.');
end;

procedure Atividade3;
var
  Nota1, Nota2, Nota3: real;
  Media: real;
begin
  ClrScr;
  writeln('Atividade 3:');
  writeln;
  write('Digite sua primeira nota: ');
  readln(Nota1);
  writeln;
  write('Digite sua segunda nota: ');
  readln(Nota2);
  writeln;
  write('Digite sua terceira nota: ');
  readln(Nota3);
  writeln;
  Media := (Nota1 + Nota2 + Nota3) / 3;
  writeln('Sua media foi ', round(Media));
end;

procedure Atividade4;
var
  SalarioTotal, HorasPorDia, SalarioPorHora: real;
begin
  ClrScr;
  writeln('Atividade 4:');
  writeln;
  write('De quanto e seu salario? ');
  readln(SalarioTotal);
  writeln;
  write('Quantas horas voce trabalha por dia? ');
  readln(HorasPorDia);
  writeln;
  SalarioPorHora := SalarioTotal / (30 * HorasPorDia);
  writeln('Considerando um mes de 30 dias, voce recebe R$ ', SalarioPorHora:0:2, ' reais por hora.');
end;

procedure Atividade5;
var
  Comprimento, Largura, Area, CustoConstrucao: real;
  CustoMetroQuadrado: real = 850; 
begin
  ClrScr;
  writeln('Atividade 5:');
  writeln;
  write('Digite o comprimento do terreno (em metros): ');
  readln(Comprimento);
  writeln;
  write('Digite a largura do terreno (em metros): ');
  readln(Largura);
  writeln;
  Area := Comprimento * Largura;
  CustoConstrucao := Area * CustoMetroQuadrado;
  writeln('A construcao custara R$ ', CustoConstrucao:0:2);
end;

procedure Atividade6;
var
  Resposta1, Resposta2, Resposta3: string;
begin
  ClrScr;
  writeln('Atividade 6:');
  writeln;
  writeln('O Brasil e o pais mais populoso do mundo.');
  write('Isso e: ');
  readln(Resposta1);
  writeln;
  writeln('2 + 2 * 2 = 6');
  write('Isso e: ');
  readln(Resposta2);
  writeln;
  writeln('Programar e divertido.');
  write('Isso e: ');
  readln(Resposta3);
  writeln;
  writeln('Gabarito: falso, verdadeiro, verdadeiro.');
  writeln('Suas respostas: ', Resposta1, ', ', Resposta2, ', ', Resposta3);
end;

procedure Atividade7;
var
  Preco1, Preco2, Preco3, TotalCompra, ValorDesconto, TotalPagar: real;
  Desconto: real = 0.2;
begin
  ClrScr;
  writeln('Atividade 7:');
  writeln;
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

procedure Atividade8;
var
  DistanciaKM, DistanciaMetros, NumPassos: real;
  PassoPorMetro: real = 1 / 0.82;
begin
  ClrScr;
  writeln('Atividade 8:');
  writeln;
  write('Qual a distancia em KM? ');
  readln(DistanciaKM);
  writeln;
  DistanciaMetros := DistanciaKM * 1000;
  NumPassos := DistanciaMetros * PassoPorMetro;
  writeln(DistanciaKM:0:2, ' km e equivalente a ', round(NumPassos), ' passos.');
end;

procedure Atividade9;
var
  NumPedreiros, HorasParaTerminar: integer;
  HorasParaConstruir: real = 72;
  PedreirosParaMuro: real = 8;
begin
  ClrScr;
  writeln('Atividade 9:');
  writeln;
  write('Quantos pedreiros esteo disponiveis? ');
  readln(NumPedreiros);
  writeln;
  HorasParaTerminar := Round((PedreirosParaMuro / NumPedreiros) * HorasParaConstruir); 
  writeln('Os ', NumPedreiros, ' pedreiros levam ', HorasParaTerminar, ' horas para terminar o muro.');
end;

procedure Atividade10;
var
  AcumuladoDia: real;
  NumPagantesNormais, NumEstudantes: integer;
  ValorPassagem: real = 30;
  PercentualPagantesNormais: real = 0.55;
  PercentualEstudantes: real = 0.45;
begin
  ClrScr;
  writeln('Atividade 10:');
  writeln;
  write('Qual o acumulado do dia? ');
  readln(AcumuladoDia);
  writeln;
  NumPagantesNormais := Round((AcumuladoDia * PercentualPagantesNormais) / ValorPassagem);
  NumEstudantes := Round((AcumuladoDia * PercentualEstudantes) / (ValorPassagem / 2));
  writeln('Foram ', NumPagantesNormais, ' pagantes normais.');
  writeln('Foram ', NumEstudantes, ' estudantes.');
end;

procedure Atividade11;
var
  num: integer;
begin
  ClrScr;
  writeln('Atividade 11:');
  writeln;
  write('Digite algum numero: ');
  readln(num);
  writeln;
  if num mod 2 = 0 then
    writeln(num, ' e Par.')
  else
    writeln(num, ' e Impar.');
end;

procedure Atividade12;
var
  Lado1, Lado2, Lado3: integer;
begin
  ClrScr;
  writeln('Atividade 12:');
  writeln;
  writeln('Informe as medidas dos tres lados:');
  write('Lado 1: ');
  readln(Lado1);
  write('Lado 2: ');
  readln(Lado2);
  write('Lado 3: ');
  readln(Lado3);
  writeln;
  if (Lado1 = Lado2) and (Lado2 = Lado3) then
    writeln('Trata-se de um triangulo equilatero.')
  else if (Lado1 = Lado2) or (Lado1 = Lado3) or (Lado2 = Lado3) then
    writeln('Trata-se de um triangulo isosceles.')
  else
    writeln('Trata-se de um triangulo escaleno.');
end;

procedure Atividade13;
var
  Peso, Altura: real;
  IMC: real;
  Resultado: string;
begin
  ClrScr;
  writeln('Atividade 13:');
  writeln;
  write('Qual seu peso? ');
  readln(Peso);
  write('Qual sua altura? ');
  readln(Altura);
  IMC := Peso / (Altura * Altura);
  writeln;
  writeln('IMC = ', IMC:0:2, '.');
  if IMC < 17 then
    Resultado := 'Muito abaixo do peso'
  else if (IMC >= 17) and (IMC < 18.5) then
    Resultado := 'Abaixo do peso'
  else if (IMC >= 18.5) and (IMC < 25) then
    Resultado := 'Peso normal'
  else if (IMC >= 25) and (IMC < 30) then
    Resultado := 'Acima do peso'
  else if (IMC >= 30) and (IMC < 35) then
    Resultado := 'Obesidade Grau 1'
  else if (IMC >= 35) and (IMC < 40) then
    Resultado := 'Obesidade Grau 2 (Severa)'
  else
    Resultado := 'Obesidade Grau 3 (Morbida)';
  writeln('Situacao: ', Resultado);
end;

procedure Atividade14;
var
  KmPorLitro, LitrosNoCarro, DistanciaDesejada: real;
  LitrosNecessarios: real;
begin
  ClrScr;
  writeln('Atividade 14:');
  writeln;
  write('Quantos quilometros o carro percorre por litro? ');
  readln(KmPorLitro);
  write('Quantos litros tem no carro atualmente? ');
  readln(LitrosNoCarro);
  write('Qual distancia (em Km) voce deseja percorrer? ');
  readln(DistanciaDesejada);
  LitrosNecessarios := DistanciaDesejada / KmPorLitro;
  if LitrosNecessarios > LitrosNoCarro then
  begin
    writeln;
    writeln('Voce precisa abastecer ', LitrosNecessarios - LitrosNoCarro:0:2, ' litros.');
  end
  else
  begin
    writeln;
    writeln('Voce nao precisa abastecer.');
  end;
end;

procedure Atividade15;
var
  Idade, Peso: integer;
  FezTatuagemStr, IngeriuAlcoolStr: string;
  FezTatuagem, IngeriuAlcool: boolean;
begin
  ClrScr;
  writeln('Atividade 15:');
  writeln;
  write('Qual sua idade? ');
  readln(Idade);
  if (Idade < 19) or (Idade > 69) then
  begin
    writeln;
    writeln('Infelizmente, voce nao pode ser doador.');
    Exit;
  end;
  write('Qual seu peso? ');
  readln(Peso);
  if Peso < 50 then
  begin
    writeln;
    writeln('Infelizmente, voce nao pode ser doador.');
    Exit;
  end;
  write('Voce fez alguma tatuagem no ultimo ano (VERDADEIRO ou FALSO)? ');
  readln(FezTatuagemStr);
  FezTatuagemStr := UpperCase(FezTatuagemStr);
  if FezTatuagemStr = 'VERDADEIRO' then
    FezTatuagem := true
  else if FezTatuagemStr = 'FALSO' then
    FezTatuagem := false
  else
  begin
    writeln;
    writeln('Resposta invalida. Por favor, responda com "VERDADEIRO" ou "FALSO".');
    Exit;
  end;
  write('Voce ingeriu alcool nas ultimas 12 horas (VERDADEIRO ou FALSO)? ');
  readln(IngeriuAlcoolStr);
  IngeriuAlcoolStr := UpperCase(IngeriuAlcoolStr);
  if IngeriuAlcoolStr = 'VERDADEIRO' then
    IngeriuAlcool := true
  else if IngeriuAlcoolStr = 'FALSO' then
    IngeriuAlcool := false
  else
  begin
    writeln;
    writeln('Resposta inválida. Por favor, responda com "VERDADEIRO" ou "FALSO".');
    Exit;
  end;
  writeln;
  writeln('Parabens, voce pode doar sangue.');
end;

procedure Atividade16;
var
  VelocidadePermitida, ExcessoVelocidade, VelocidadeMotorista: real;
begin
  ClrScr;
  writeln('Atividade 16:');
  writeln;
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

procedure Atividade17;
var
  Mes: integer;
  NomeMes: string;
begin
  ClrScr;
  writeln('Atividade 17:');
  writeln;
  write('Digite o mes em formato numerico: ');
  readln(Mes);
  writeln;
  if (Mes >= 1) and (Mes <= 12) then
  begin
    NomeMes := FormatDateTime('mmmm', EncodeDate(2000, Mes, 1));
    writeln(NomeMes);
  end
  else
    writeln('Mes invalido. Digite um numero entre 1 e 12.');
end;

procedure Atividade18;
var
  num1, num2, num3, temp: integer;
begin
  ClrScr;
  writeln('Atividade 18:');
  writeln;
  writeln('Digite os tres numeros: ');
  write('Numero 1: ');
  readln(num1);
  write('Numero 2: ');
  readln(num2);
  write('Numero 3: ');
  readln(num3);
  writeln;
  if num1 > num2 then
  begin
    temp := num1;
    num1 := num2;
    num2 := temp;
  end;
  
  if num1 > num3 then
  begin
    temp := num1;
    num1 := num3;
    num3 := temp;
  end;
  
  if num2 > num3 then
  begin
    temp := num2;
    num2 := num3;
    num3 := temp;
  end;
  writeln('Os numeros em ordem crescente sao: ', num1, ', ', num2, ', ', num3);
end;

procedure Atividade19;
var
  Dia1, Mes1, Ano1, Dia2, Mes2, Ano2: integer;
  Data1, Data2: TDateTime;
begin
  ClrScr;
  writeln('Atividade 19:');
  writeln;
  writeln('Digite a primeira data: ');
  write('Dia: ');
  readln(Dia1);
  write('Mes: ');
  readln(Mes1);
  write('Ano: ');
  readln(Ano1);
  
  writeln;
  writeln('Digite a segunda data: ');
  write('Dia: ');
  readln(Dia2);
  write('Mes: ');
  readln(Mes2);
  write('Ano: ');
  readln(Ano2);
  Data1 := EncodeDate(Ano1, Mes1, Dia1);
  Data2 := EncodeDate(Ano2, Mes2, Dia2);
  
  writeln;
  writeln('As datas em ordem crescente sao: ');
  if Data1 < Data2 then
    writeln(FormatDateTime('dd/mm/yyyy', Data1), ', ', FormatDateTime('dd/mm/yyyy', Data2))
  else
    writeln(FormatDateTime('dd/mm/yyyy', Data2), ', ', FormatDateTime('dd/mm/yyyy', Data1));
end;

procedure Atividade20;
var
  Mes: string;
  Dias: integer;
begin
  ClrScr;
  writeln('Atividade 20:');
  writeln;
  write('Digite um mes: ');
  readln(Mes);
  writeln;
  Mes := LowerCase(Mes);
  case Mes of
    'janeiro': Dias := 31;
    'fevereiro': begin
                   if IsLeapYear(YearOf(Now)) then
                     Dias := 29
                   else
                     Dias := 28;
                 end;
    'marco': Dias := 31;
    'abril': Dias := 30;
    'maio': Dias := 31;
    'junho': Dias := 30;
    'julho': Dias := 31;
    'agosto': Dias := 31;
    'setembro': Dias := 30;
    'outubro': Dias := 31;
    'novembro': Dias := 30;
    'dezembro': Dias := 31;
    else begin
           writeln('Mes invalido.');
           exit;
         end;
  end;
  writeln(Mes, ' tem ', Dias, ' dias.');
end;

procedure Atividade21;
var
  Idade: integer;
  ValorMensalidade: real = 100;
begin
  ClrScr;
  writeln('Atividade 21:');
  writeln;
  write('Qual sua idade? ');
  readln(Idade);
  writeln;
  if Idade < 10 then
    ValorMensalidade := ValorMensalidade + 80
  else if (Idade >= 10) and (Idade <= 30) then
    ValorMensalidade := ValorMensalidade + 50
  else if (Idade > 30) and (Idade <= 50) then
    ValorMensalidade := ValorMensalidade + 95
  else if (Idade > 50) and (Idade <= 60) then
    ValorMensalidade := ValorMensalidade + 110
  else if Idade > 60 then
    ValorMensalidade := ValorMensalidade + 130;
  writeln('Sua mensalidade sera ', ValorMensalidade:0:2, ' reais.');
end;

procedure Atividade22;
var
  Codigo, Quantidade: integer;
  ValorUnitario, ValorTotal: real;
begin
  ClrScr;
  writeln('Atividade 22:');
  writeln;
  write('Qual o codigo do salgado? ');
  readln(Codigo);
  writeln;
  write('Qual a quantidade de salgados? ');
  readln(Quantidade);
  writeln;
  case Codigo of
    1: ValorUnitario := 0.50; 
    2: ValorUnitario := 0.75; 
    3: ValorUnitario := 0.40; 
    4: ValorUnitario := 0.80; 
  else
    begin
      writeln('Codigo não reconhecido.');
      exit;
    end;
  end;
  ValorTotal := ValorUnitario * Quantidade;
  writeln('Sua conta foi ', ValorTotal:0:2, ' reais.');
end;

procedure Atividade23;
var
  GastoBebidaStr, GastoComidaStr, GastoTransporteStr: string;
  GastoBebida, GastoComida, GastoTransporte: boolean;
  NumPessoas: integer;
  TotalGastos, GastoMedioBebida, GastoMedioComida, GastoMedioTransporte: real;
begin
  ClrScr;
  writeln('Atividade 23:');
  writeln;
  write('Voce planeja beber (VERDADEIRO ou FALSO)? ');
  readln(GastoBebidaStr);
  write('Voce planeja comer (VERDADEIRO ou FALSO)? ');
  readln(GastoComidaStr);
  write('Voce planeja contratar transporte (VERDADEIRO ou FALSO)? ');
  readln(GastoTransporteStr);
  GastoBebida := (UpperCase(GastoBebidaStr) = 'VERDADEIRO');
  GastoComida := (UpperCase(GastoComidaStr) = 'VERDADEIRO');
  GastoTransporte := (UpperCase(GastoTransporteStr) = 'VERDADEIRO');
  GastoMedioBebida := 80;
  GastoMedioComida := 60;
  GastoMedioTransporte := 15;
  TotalGastos := 0;
  if GastoBebida then
    TotalGastos := TotalGastos + GastoMedioBebida;
  if GastoComida then
    TotalGastos := TotalGastos + GastoMedioComida;
  if GastoTransporte then
    TotalGastos := TotalGastos + GastoMedioTransporte;
  writeln;
  write('Quantas pessoas sairao com voce? ');
  readln(NumPessoas);
  TotalGastos := TotalGastos * NumPessoas;
  writeln;
  writeln('O gasto estimado da noite e: ', TotalGastos:0:2, ' reais.');
end;

procedure Atividade24;
var
  Sexo: Char;
  IdadeInicioContribuicao, IdadeAposentadoriaMinima: integer;
  PorcentagemBeneficio: real;
begin
  ClrScr;
  writeln('Atividade 24:');
  writeln;
  write('Qual seu sexo (M/F)? ');
  readln(Sexo);
  write('Com que idade comecou a contribuir? ');
  readln(IdadeInicioContribuicao);
  if (Sexo = 'M') then
  begin
    IdadeAposentadoriaMinima := 65;
    PorcentagemBeneficio := ((IdadeInicioContribuicao + 40) - IdadeAposentadoriaMinima) * 2.5;
  end
  else if (Sexo = 'F') then
  begin
    IdadeAposentadoriaMinima := 62;
    PorcentagemBeneficio := ((IdadeInicioContribuicao + 40) - IdadeAposentadoriaMinima) * 2.5;
  end
  else
  begin
    writeln('Sexo invalido.');
    Exit;
  end;
  writeln;
  writeln('Voce so tera direito a se aposentar aos ', IdadeAposentadoriaMinima, ' anos.');
  writeln('Com essa idade voce tera direito a ', PorcentagemBeneficio:0:1, '% do beneficio.');

  if (PorcentagemBeneficio >= 100) then
    writeln('Voce precisa trabalhar ate os ', (IdadeInicioContribuicao + 40), ' anos para ter direito a 100% do beneficio.')
  else
    writeln('Voce precisa trabalhar ate os ', (IdadeInicioContribuicao + 40 + (100 - PorcentagemBeneficio) / 2.5):0:0, ' anos para ter direito a 100% do beneficio.');
end;

procedure Atividade25;
var
  numero, soma: integer;
  continuar: char;
begin
  ClrScr;
  writeln('Atividade 25:');
  writeln;
  soma := 0;
  continuar := 's';
  writeln('Digite um numero: ');
  readln(numero);
  soma := soma + numero;
  repeat
    ClrScr;
    writeln('Quer fornecer outro (s/n)? ');
    readln(continuar);
    if continuar = 's' then
    begin
      ClrScr;
      writeln('Digite um numero: ');
      readln(numero);
      soma := soma + numero;
    end;
  until continuar <> 's';
  ClrScr;
  writeln('A soma dos numeros e ', soma);
end;

procedure Atividade26;
var
  numero, i: integer;
begin
  ClrScr;
  writeln('Atividade 26:');
  writeln;
  writeln('Digite um numero: ');
  readln(numero);
  writeln;
  writeln('Numeros impares ate ', numero, ':');
  for i := 1 to numero do
  begin
    if i mod 2 <> 0 then
      write(i, ', ');
  end;
  writeln;
end;

procedure Atividade27;
var
  numeros: array[1..5] of integer;
  i, maior: integer;
begin
  ClrScr;
  writeln('Atividade 27:');
  writeln;
  writeln('Digite os cinco numeros:');
  for i := 1 to 5 do
  begin
    readln(numeros[i]);
  end;
  maior := numeros[1]; 
  for i := 2 to 5 do
  begin
    if numeros[i] > maior then
      maior := numeros[i];
  end;
  ClrScr;
  writeln('O maior numero foi ', maior, '.');
end;

procedure Atividade28;
var
  numAlunos, i: integer;
  nota1, nota2, somaNotas, mediaTurma: real;
begin
  ClrScr;
  writeln('Atividade 28:');
  writeln;
  writeln('Informe a quantidade de alunos:');
  readln(numAlunos);
  somaNotas := 0;
  for i := 1 to numAlunos do
  begin
    ClrScr;
    writeln('Digite as notas do aluno ', i, ':');
    writeln;
    writeln('Primeira Nota:');
    readln(nota1);
    writeln;
    writeln('Segunda Nota:');
    readln(nota2);
    somaNotas := somaNotas + (nota1 + nota2) / 2;
  end;
  mediaTurma := somaNotas / numAlunos;
  ClrScr;
  writeln('A media da turma foi ', mediaTurma:0:1);
end;

procedure Atividade29;

var
  num, i: integer;
  isPrimo: boolean;
begin
  ClrScr;
  writeln('Atividade 29:');
  writeln;
  writeln('Digite um numero:');
  readln(num);
  writeln;
  if num < 2 then
    isPrimo := false
  else
    isPrimo := true;
  for i := 2 to num div 2 do
  begin
    if num mod i = 0 then
    begin
      isPrimo := false;
      break;
    end;
  end;
  if isPrimo then
    writeln(num, ' e primo.')
  else
    writeln(num, ' nao e primo.');
end;

procedure Atividade30;
var
  numPessoas, i, homens, mulheres: integer;
  sexo: char;
  nome: string;
begin
  ClrScr;
  writeln('Atividade 30:');
  writeln;
  writeln('Quantas pessoas?');
  readln(numPessoas);
  homens := 0;
  mulheres := 0;
  ClrScr;
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
      mulheres := mulheres + 1;
      writeln;
    end
    else if sexo = 'm' then
    begin
      writeln('Bem vindo sr. ', nome);
      homens := homens + 1;
      writeln;
    end;
  end;
  ClrScr;
  writeln('Homens cumprimentados: ', homens);
  writeln('Mulheres cumprimentadas: ', mulheres);
end;

procedure Atividade31;
var
  num, i, soma: integer;
begin
  ClrScr;
  writeln('Atividade 31:');
  writeln;
  writeln('Digite um numero:');
  readln(num);
  writeln;
  soma := 0;
  for i := 1 to num do
  begin
    soma := soma + i;
  end;
  writeln('A soma dos numeros e igual a ', soma, '.');
end;

procedure Atividade32;
var
  idade, i: integer;
  crianca, preAdolescente, adolescente, adulto, idoso: integer;
begin
  ClrScr;
  writeln('Atividade 32:');
  writeln;
  crianca := 0;
  preAdolescente := 0;
  adolescente := 0;
  adulto := 0;
  idoso := 0;
  for i := 1 to 10 do
  begin
    write('Digite a idade pessoa ', i, ': ');
    readln(idade);
    ClrScr;
    if (idade >= 0) and (idade <= 9) then
      inc(crianca)
    else if (idade >= 10) and (idade <= 14) then
      inc(preAdolescente)
    else if (idade >= 15) and (idade <= 21) then
      inc(adolescente)
    else if (idade >= 22) and (idade <= 64) then
      inc(adulto)
    else if idade >= 65 then
      inc(idoso);
      
  end;
  writeln('Quantidade de criancas: ', crianca);
  writeln('Quantidade de pre-adolescentes: ', preAdolescente);
  writeln('Quantidade de adolescentes: ', adolescente);
  writeln('Quantidade de adultos: ', adulto);
  writeln('Quantidade de idosos: ', idoso);
end;

procedure Atividade33;
var
  x, i, a, b, temp: integer;
begin
  ClrScr;
  writeln('Atividade 33:');
  writeln;
  write('Qual o valor de X: ');
  readln(x);
  writeln;
  if x <= 0 then
    writeln('Valor de X deve ser maior que 0.')
  else
  begin
    a := 0;
    b := 1;
    write(a);
    if x > 1 then
      write(', ', b);
    for i := 3 to x do
    begin
      temp := a + b;
      write(', ', temp);
      a := b;
      b := temp;
    end;
  end;
  writeln;
end;

procedure Atividade34;
var
  login1, senha1, login2, senha2: string;
begin
  ClrScr;
  writeln('Atividade 34:');
  writeln;
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

procedure Atividade35;
var
  numero, contador: integer;
begin
  ClrScr;
  writeln('Atividade 35:');
  writeln;
  contador := 0;
  repeat
    write('Digite um numero: ');
    readln(numero);
    if numero <> 0 then
    begin
      if numero > 0 then
        writeln(numero, ' e POSITIVO')
      else
        writeln(numero, ' e NEGATIVO');
      contador := contador + 1;
    end;
    writeln;
  until numero = 0;
  ClrScr;
  writeln('Foram digitados ', contador, ' numeros.');
end;

procedure Atividade36;
var
  valor, notas100, notas50, notas20, notas10, notas5, notas2, notas1: integer;
begin
  ClrScr;
  writeln('Atividade 36:');
  writeln;
  write('Digite um numero inteiro: ');
  readln(valor);
  writeln;
  notas100 := valor div 100;
  valor := valor mod 100;
  notas50 := valor div 50;
  valor := valor mod 50;
  notas20 := valor div 20;
  valor := valor mod 20;
  notas10 := valor div 10;
  valor := valor mod 10;
  notas5 := valor div 5;
  valor := valor mod 5;
  notas2 := valor div 2;
  valor := valor mod 2;
  notas1 := valor;
  writeln('Voce precisa de');
  if notas100 > 0 then
    writeln('Notas de 100 reais: ', notas100);
  if notas50 > 0 then
    writeln('Notas de 50 reais: ', notas50);
  if notas20 > 0 then
    writeln('Notas de 20 reais: ', notas20);
  if notas10 > 0 then
    writeln('Notas de 10 reais: ', notas10);
  if notas5 > 0 then
    writeln('Notas de 5 reais: ', notas5);
  if notas2 > 0 then
    writeln('Notas de 2 reais: ', notas2);
  if notas1 > 0 then
    writeln('Notas de 1 real: ', notas1);
end;

procedure Atividade37;
var
  populacaoA, populacaoB, anos: integer;
  taxaCrescimentoA, taxaCrescimentoB: real;
begin
  ClrScr;
  writeln('Atividade 37:');
  writeln;
  write('Populacao cidade A = ');
  readln(populacaoA);
  writeln;
  write('Taxa de crescimento cidade A (%) = ');
  readln(taxaCrescimentoA);
  writeln;
  write('Populacao cidade B = ');
  readln(populacaoB);
  writeln;
  write('Taxa de crescimento cidade B (%) = ');
  readln(taxaCrescimentoB);
  writeln;
  anos := 0;
  if (taxaCrescimentoA <= taxaCrescimentoB) then
    writeln('A populacao da cidade A nunca ultrapassara a da cidade B')
  else
  begin
    while (populacaoA <= populacaoB) do
    begin
      anos := anos + 1;
      populacaoA := populacaoA + Round(populacaoA * taxaCrescimentoA / 100);
      populacaoB := populacaoB + Round(populacaoB * taxaCrescimentoB / 100);
    end;
    writeln('A populacao da cidade A ultrapassara a da cidade B em ', anos, ' anos');
  end;
end;

procedure Atividade38;
var
  numeros: array[1..10] of integer;
  i: integer;
begin
  ClrScr;
  writeln('Atividade 38:');
  writeln;
  writeln('Digite 10 numeros');
  for i := 1 to 10 do
  begin
    write('Numero ', i, ': ');
    readln(numeros[i]);
  end;
  writeln;
  writeln('Ordem original:');
  for i := 1 to 10 do
    write(numeros[i], ' ');
  writeln;
  writeln;
  writeln('Ordem inversa:');
  for i := 10 downto 1 do
    write(numeros[i], ' ');
  writeln;  
end;

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
    case Opcao of
      1: begin
           Atividade1;
           writeln;
           writeln('Pressione Enter para voltar ao menu...');
           readln;
         end;
      2: begin
           Atividade2;
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
  until Opcao = 0;
end.