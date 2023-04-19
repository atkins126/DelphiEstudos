program CEPLive;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {Form1},
  Model.Connections.Interfaces in 'src\Model\Connections\Model.Connections.Interfaces.pas',
  Model.Connections.RestRequest in 'src\Model\Connections\Model.Connections.RestRequest.pas',
  Model.Services.Interfaces in 'src\Model\Services\Model.Services.Interfaces.pas',
  Model.Services.CEP.APICEP in 'src\Model\Services\CEP\Model.Services.CEP.APICEP.pas',
  Model.Services.CEP.BrasilAPI in 'src\Model\Services\CEP\Model.Services.CEP.BrasilAPI.pas',
  Model.Services.CEP.ViaCEP in 'src\Model\Services\CEP\Model.Services.CEP.ViaCEP.pas',
  Model.Services.CEP.Interfaces in 'src\Model\Services\CEP\Model.Services.CEP.Interfaces.pas',
  Model.Services.CEP.Builder in 'src\Model\Services\CEP\Model.Services.CEP.Builder.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
