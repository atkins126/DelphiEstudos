program ReceiverMessenger;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  Consts.Messeger in 'Consts.Messeger.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
