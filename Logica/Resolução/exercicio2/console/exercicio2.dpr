program exercicio2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{
Dados um inteiro x e um inteiro n�o-negativo n, calcular x n.

Programa que le um numero inteiro x e um numero inteiro n maior ou igual a zero
e imprime o x elevado a n.

exemplo da execu��o:

digite a base(inteiro):3
digite o expoente(>=0):3
o valor de 3 elevado a 3 � 27

digite a base(inteiro):5
digite o expoente(>=0):0
o valor de 5 elevado a 0 � 1
}
var
  x,n,potencia,contador:integer;
begin
  writeln('');
  writeln('            CALCULO DE POTENCIAS');
  writeln('');
  repeat
    write('Entre com um numero inteiro e um natural: ');
    read(x,n);
    if n < 0 then writeln('O segundo numero deve ser natural!!')
  until n >= 0;
  potencia := 1;
  contador := 0;
  while(contador <> n) do
  begin
    potencia := potencia * x;
    contador := contador + 1
  end;
  writeln ('O valor de ', x,' elevado a ', n,': ', potencia);
  sleep(3000);
end.
