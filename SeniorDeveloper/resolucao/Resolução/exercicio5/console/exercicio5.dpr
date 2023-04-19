program exercicio5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{
Dados dois números inteiros positivos, determinar o máximo divisor comum entre
eles usando o algoritmo de Euclides.

Algoritimo de euclides:
Em matemática, o algoritmo de Euclides é um método simples e eficiente de
encontrar o máximo divisor comum entre dois números inteiros diferentes de zero.
O algoritmo de Euclides é baseado no princípio de que o MDC não muda se o menor
número for subtraído ao maior

Objetivo:
Programa que le dois inteiro positivos n e m e imprime o maximo divisor comum
MDC de n e m.

Exemplo de execucao:
Digite o valor de n (n>0):15
Digite o valor de m (m>0):24
MDC(15,24)=3

Digite o valor de n (n>0):315
Digite o valor de m (m>0):125
MDC(315,125)=5

Digite o valor de n (n>0):7
Digite o valor de m (m>0):5
MDC(7,5)=1
}

var a,b,r: integer;

begin
  writeln('Determine o MDC de dois numeros n > 0 e m > 0');
  write('Digite o valor de n > 0: ');
  readln(a);
  write('Digite o valor de m > 0: ');
  readLn(b);
  write('MDC(', a, ',', b, ')=');
  repeat
    r:=a mod b;
    a:=b;
    b:=r
  until r=0;
  writeLn(a);
  sleep(5000);
end.
