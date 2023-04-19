program ProjectExercicio03;

uses
  Vcl.Forms,
  Exercicio03 in 'Exercicio03.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
