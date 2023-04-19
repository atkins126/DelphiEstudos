program RTTI;

uses
  Vcl.Forms,
  uRRTI in 'uRRTI.pas' {Form1},
  Rtti.Utils in 'Rtti.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
