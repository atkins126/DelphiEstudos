unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
  quadrado : Integer;
  sequencia,numero : String;
begin
  memo1.Clear;
  sequencia := Edit1.Text;
  for I := 1 to Length(sequencia) do
  begin
    if sequencia[I] in ['0'..'9'] then
    begin
      if sequencia[I] <> '0' then
      begin
        quadrado := StrToInt(sequencia[I]) * StrToInt(sequencia[I]);
        Memo1.Lines.Add('O quadrado do numero '+sequencia[I]+': '+IntToStr(quadrado));
      end else exit;
    end;
  end;
end;

end.
