program exercicio4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
Dados dois n�meros naturais m e n e duas seq��ncias ordenadas com m e n n�meros
inteiros, obter uma �nica seq��ncia ordenada contendo todos os elementos das
seq��ncias originais sem repeti��o.
  Sugest�o: Imagine uma situa��o real, por exemplo,
  dois fich�rios de uma biblioteca.

Exemplo:
  Se m = 6 e uma sequencia crescente � dada como 3,7,9,10,18,19, e n = 7 e
  a outra sequencia crescente � dada como 1,2,7,11,18,22,36, ent�o a sequencia
  crescente resultante � 1,2,3,7,9,10,11,18,19,22,36,
  contendo 11 < 13 = 6 + 7 = m + n elementos.
}

const
  tamMax = 100;
  numMaxIntercala=200;

type
  indices = 1..tamMax;
  indInt = 1..numMaxIntercala;
  sequencia = array[indices] of integer;
  intercala = array[indInt] of integer;

var
  m, n, i, j, k : integer;
  a, b : sequencia;
  c : intercala;
begin
 write('digite o valor de m:');
 readLn(m);

 for i:=1 to m do
  read(a[i]);

 readLn;

 write('digite o valor de n:');
 readLn(n);

 for i:=1 to n do
  read(b[i]);

 readLn;

 i:=1;
 j:=1;
 k:=0;

 while (i<=m) and (j<=n) do
   if a[i]<b[j] then
   begin
     k:=k+1;
     c[k]:=a[i];
     i:=i+1
   end
   else
   if a[i]>b[j] then
   begin
     k:=k+1;
     c[k]:=b[j];
     j:=j+1
   end
   else
   begin
     k:=k+1;
     c[k]:=a[i];
     i:=i+1;
     j:=j+1
   end;

 while i<=m do
 begin
   k:=k+1;
   c[k]:=a[i];
   i:=i+1
 end;

 while j<=n do
 begin
   k:=k+1;
   c[k]:=b[j];
   j:=j+1
 end;

 for i:=1 to k do
  write(c[i],' ');

  writeLn;
  sleep(10000);
end.
