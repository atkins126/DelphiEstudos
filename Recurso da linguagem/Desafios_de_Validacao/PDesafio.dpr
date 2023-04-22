program PDesafio;

uses
  Vcl.Forms,
  UDesafioPrincipal in 'UDesafioPrincipal.pas' {Form1},
  UDesafio.Validador.Parametros in 'UDesafio.Validador.Parametros.pas',
  UDesafio.Validador.Interfaces in 'UDesafio.Validador.Interfaces.pas',
  UDesafio.Validador.NotNull in 'UDesafio.Validador.NotNull.pas',
  UDesafio.Validacao in 'UDesafio.Validacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
