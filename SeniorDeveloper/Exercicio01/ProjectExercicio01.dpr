program ProjectExercicio01;

uses
  Vcl.Forms,
  Exercicio01 in 'Exercicio01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
