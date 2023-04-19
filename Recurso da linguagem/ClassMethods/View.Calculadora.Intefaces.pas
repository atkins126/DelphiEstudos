unit View.Calculadora.Intefaces;

interface

uses
  System.SysUtils;
type
  iCalculadoraOperacoes = interface
    ['{66F6C1F3-91CF-4392-B9D6-F916C46ECF0C}']
    function Calcular(A, B : Double): Double;
    function Display (aValue : TProc<String>) : iCalculadoraOperacoes;
  end;

implementation

end.
