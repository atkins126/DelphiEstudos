program ProjectExercicio04;

uses
  Vcl.Forms,
  Exercicio04 in 'Exercicio04.pas' {FormExercicio04};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormExercicio04, FormExercicio04);
  Application.Run;
end.
