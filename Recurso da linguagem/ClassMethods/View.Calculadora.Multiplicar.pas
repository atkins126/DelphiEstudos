unit View.Calculadora.Multiplicar;

interface

uses
  View.Calculadora.Intefaces, System.SysUtils;
type
  TCalculadoraMultiplicar = class (TInterfacedObject, iCalculadoraOperacoes)
  private
    FDisplay :TProc<String>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iCalculadoraOperacoes;
    function calcular (A, B : Double) : Double;
    function Display (aValue : TProc<String>) : iCalculadoraOperacoes;

  end;

implementation

{ TCalculadoraMultiplicar }

function TCalculadoraMultiplicar.calcular(A, B: Double): Double;
begin
  Result := A * B;
    if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;

constructor TCalculadoraMultiplicar.Create;
begin

end;

destructor TCalculadoraMultiplicar.Destroy;
begin

  inherited;
end;

function TCalculadoraMultiplicar.Display(
  aValue: TProc<String>): iCalculadoraOperacoes;
begin
  Result := Self;
  FDisplay := aValue;
end;

class function TCalculadoraMultiplicar.New: iCalculadoraOperacoes;
begin
  Result := Self.Create;
end;

end.
