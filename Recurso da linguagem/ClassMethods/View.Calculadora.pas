unit View.Calculadora;

interface

uses
  View.Calculadora.Soma, View.Calculadora.Intefaces,
  View.Calculadora.Multiplicar;

type
  TCalculadora = class
    private
    public
     class function Somar : iCalculadoraOperacoes;
     class function Multiplicar : iCalculadoraOperacoes;
  end;

implementation

{ TCalculator }

class function TCalculadora.Multiplicar: iCalculadoraOperacoes;
begin
 Result := TCalculadoraMultiplicar.New;
end;

class function TCalculadora.Somar : iCalculadoraOperacoes;
begin
  Result := TCalculadoraSomas.New;
end;

end.
