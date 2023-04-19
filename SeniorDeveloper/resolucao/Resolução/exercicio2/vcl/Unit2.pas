unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  x,n,potencia,contador:integer;
begin
  potencia := 1;
  contador := 0;
  repeat
    x := StrToInt(Edit1.Text);
    n := StrToInt(Edit2.Text);
    if (n < 0) then
      ShowMessage('O segundo numero deve ser natural');
  until n >= 0;

  while (contador <> N) do
  begin
    potencia := potencia * x;
    inc(contador);
  end;
  label3.Caption := 'O valor de ' + IntToStr(x) + ' elevado a ' +
      IntToStr(n) + ' : ' + IntToStr(potencia);
end;

end.
