unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  m,n,r : integer;
begin
  n := StrToInt(Edit1.Text);
  m := StrToInt(Edit2.Text);
  Label2.Caption := 'MDC('+IntToStr(n)+','+IntToStr(m)+')=';
  repeat
    r := n mod  m;
    n := m;
    m := r;
  until (r=0);
  Label2.Caption := Label2.Caption+IntToStr(n);
end;

end.
