program Generics;

uses
  Vcl.Forms,
  Generic in 'Generic.pas' {Form1},
  Generic.Classe.Pessoa in 'Generic.Classe.Pessoa.pas',
  Generic.Classe.Empresa in 'Generic.Classe.Empresa.pas',
  Generic.Classe.PessoaParams in 'Generic.Classe.PessoaParams.pas',
  Generic.Classe.Interfaces in 'Generic.Classe.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
