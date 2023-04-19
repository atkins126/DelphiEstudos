unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  n,fator : Integer;
begin
  n := StrToInt(Edit1.Text);

  while (n > 1) do begin
    fator:=2;

    while ((n mod fator) > 0) do inc(fator);

    if (n mod fator) = 0 then begin
        memo1.lines.Add(IntToStr(n)+' | '+IntToStr(fator));
        n := trunc(n / fator);
    end;
  end;
end;

end.
