program PClassOperators;

uses
  Vcl.Forms,
  Class_Operators in 'Class_Operators.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
