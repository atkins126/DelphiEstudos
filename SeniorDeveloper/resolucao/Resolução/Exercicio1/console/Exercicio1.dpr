program Exercicio1;

{$APPTYPE CONSOLE}

{$R *.res}

{
  Dada uma sequência de números inteiros não-nulos, seguida por 0, imprima seus quadrados.

  Um programa que lê uma seguencia de numeros inteiros não nulos e imprime o quadrado
  de cada numero lido.

  Exemplo de execução:
  Calculo dos quadrados de uma sequencia de numeros.
  A sequencia termina com um 0 (zero).
}

uses
  System.SysUtils;


var
  numero: integer; // usada para leitura da sequencia
  quadrado: integer; // guardara o quadrado do numero lido
begin
  writeln('');
  writeln('       Calculo dos quadrados de uma sequencia de numeros');
  writeln('');
  write('Digite um numero: ');
//  write('Entre com uma sequencia de numeros inteiros nao-nulos, seguida por 0: ');
  read(numero);
  while (numero <> 0) do
  begin
    quadrado:= numero * numero;
    writeln('O quadrado do numero ', numero, ': ',quadrado);
    write('Digite um numero: ');
    read(numero)
  end;
end.
