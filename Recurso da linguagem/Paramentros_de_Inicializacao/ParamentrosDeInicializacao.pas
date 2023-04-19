unit ParamentrosDeInicializacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Caption := ParamStr(0);
  Memo1.Lines.Add(ParamStr(1));
  Memo1.Lines.Add(ParamStr(2));
  if ParamStr(2) = 'SKIN_RED' then
    Self.Color := clRed;
  if ParamStr(2) = 'SKIN_BLUE' then
    Self.Color := clBlue;
end;

end.
