program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  View.Pessoa in 'View.Pessoa.pas',
  View.Pessoa.Interfaces in 'View.Pessoa.Interfaces.pas',
  View.PessoaJuridica in 'View.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
