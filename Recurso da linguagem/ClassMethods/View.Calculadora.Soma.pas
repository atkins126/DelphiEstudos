unit View.Calculadora.Soma;

interface

uses
  View.Calculadora.Intefaces, System.SysUtils;
  type
    TCalculadoraSomas = class(TInterfacedObject, iCalculadoraOperacoes)
      private
        FDisplay : TProc<String>;
      public
        constructor Create;
        destructor Destroy; override;
        class function New : iCalculadoraOperacoes;
        function Calcular (A, B : Double): Double;
        function Display (aValue : TProc<String>) : iCalculadoraOperacoes;
      end;

implementation

{ TCalculadoraSomas }

function TCalculadoraSomas.Calcular(A, B: Double): Double;
begin
  Result := A + B;
  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;

constructor TCalculadoraSomas.Create;
begin

end;

destructor TCalculadoraSomas.Destroy;
begin

  inherited;
end;

function TCalculadoraSomas.Display(
  aValue: TProc<String>): iCalculadoraOperacoes;
begin
  Result := Self;
  FDisplay := aValue;
end;

class function TCalculadoraSomas.New: iCalculadoraOperacoes;
begin
  Result := Self.Create;
end;

end.
