program SystemMessagingAula;

uses
  Vcl.Forms,
  SystemMessaging in 'SystemMessaging.pas' {Form1},
  FSystemMessaging2 in 'FSystemMessaging2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
