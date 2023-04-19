unit Exercicio05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  function  MDC (V01, V02 : Integer) : Integer;
  public
    { Public declarations }

  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  Valor01, Valor02, Resultado : Integer;
begin
  Valor01 := StrToInt(Edit1.Text);
  Valor02 := StrToInt(Edit2.Text);
  Memo1.Lines.Add('O Máximo Divisor Comum de ' + IntToStr(Valor01) +
    ' e ' + IntToStr(Valor02) + ' é ' + IntToStr(MDC(Valor01, Valor02)));
end;

function TForm5.MDC(V01, V02: Integer): Integer;
var
  Resto : Integer;
begin
  while V02 <> 0 do
  begin
    Resto := V01 mod V02;
    V01 := V02;
    V02 := Resto;
  end;
  Result := V01;
end;

end.
