program Diretivasd;

uses
  Vcl.Forms,
  Diretivas_Compilacao in 'Diretivas_Compilacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
