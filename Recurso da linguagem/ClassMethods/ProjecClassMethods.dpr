program ProjecClassMethods;

uses
  Vcl.Forms,
  Class_Methods in 'Class_Methods.pas' {Form1},
  View.Calculadora in 'View.Calculadora.pas',
  View.Calculadora.Soma in 'View.Calculadora.Soma.pas',
  View.Calculadora.Intefaces in 'View.Calculadora.Intefaces.pas',
  View.Calculadora.Multiplicar in 'View.Calculadora.Multiplicar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
