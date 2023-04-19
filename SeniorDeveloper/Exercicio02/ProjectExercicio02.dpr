program ProjectExercicio02;

uses
  Vcl.Forms,
  Exercicio02 in 'Exercicio02.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
