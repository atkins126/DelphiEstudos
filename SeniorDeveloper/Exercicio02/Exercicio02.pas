unit Exercicio02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnCalcularX: TButton;
    edtX: TEdit;
    edtN: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure btnCalcularXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCalcularXClick(Sender: TObject);
var
  X, N : integer;
  R, C : integer;
begin
  X := StrToInt(edtX.Text);
  N := StrToInt(edtN.Text);
  R := X;
  for C := 1 to N do
    R := R*X;
  Memo1.Lines.Add(r.ToString);

end;

end.

