program exercicio4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
Dados dois números naturais m e n e duas seqüências ordenadas com m e n números
inteiros, obter uma única seqüência ordenada contendo todos os elementos das
seqüências originais sem repetição.
  Sugestão: Imagine uma situação real, por exemplo,
  dois fichários de uma biblioteca.

Exemplo:
  Se m = 6 e uma sequencia crescente é dada como 3,7,9,10,18,19, e n = 7 e
  a outra sequencia crescente é dada como 1,2,7,11,18,22,36, então a sequencia
  crescente resultante é 1,2,3,7,9,10,11,18,19,22,36,
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
