unit Metodoos_Anonimos2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    procedure ValidarCampo ( Sender : TObject );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  View.Loading;

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var
  vLoadin : TLoading;
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Edit1.OnExit := ValidarCampo;
end;

procedure TForm1.ValidarCampo(Sender: TObject);
begin
  ShowMessage('Validar')
end;

end.
