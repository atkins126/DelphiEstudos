program Potencias;
var
  x,                
  n,                
  potencia,         
  contador: integer;
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
  writeln ('O valor de ', x,' elevado a ', n,': ', potencia)
end.
