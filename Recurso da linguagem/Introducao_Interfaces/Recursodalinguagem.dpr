program Recursodalinguagem;

uses
  Vcl.Forms,
  IntroducaoAInterfaces in 'IntroducaoAInterfaces.pas' {Form1},
  View.Pessoa in 'View.Pessoa.pas',
  View.Pessoa.interfaces in 'View.Pessoa.interfaces.pas',
  View.PessoaJuridica in 'View.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
