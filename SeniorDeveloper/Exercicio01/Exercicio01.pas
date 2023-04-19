unit Exercicio01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCalcular: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  Num01, Quad, result: integer;
  begin
    Quad  := 2;
    Num01 := StrToInt(Edit1.Text);
    while Num01 > 0 do
    begin
      Result := Num01 * Quad;
      Break
    end;
    ShowMessage('O numero é: '+ IntToStr(Result));
  end;

end.
