program IntroClasses;

uses
  Vcl.Forms,
  UPrincialClasses in 'UPrincialClasses.pas' {Form1},
  View.Pessoa in 'View.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
