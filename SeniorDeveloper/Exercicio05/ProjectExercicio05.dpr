program ProjectExercicio05;

uses
  Vcl.Forms,
  Exercicio05 in 'Exercicio05.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
