unit Exercicio03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    btnCalcularFator: TButton;
    LbResultado: TLabel;
    lbInsiraNumero: TLabel;
    Edit1: TEdit;
    procedure btnCalcularFatorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnCalcularFatorClick(Sender: TObject);
var
  Numero, Divisor, Cont: Integer;
begin
  Numero := StrToInt(Edit1.Text);
  if (Numero < 1) then
  Begin
    Memo1.Lines.Add(Edit1.Text +
        ' Não é um número positivo inteiro maior que zero.');
    exit
  End;
  Cont := 0;
  for Divisor := 1 to Numero do
    begin
      if (Numero mod Divisor = 0) then
      begin
        Inc (Cont);
        if  (Cont > 2) then
        break
      end;
    end;
    if (Cont = 2) then
    Begin
      Memo1.Lines.Add(Numero.ToString + ' É um número primo ' +
        'e sua multiplicidade é: ' + Numero.ToString + ' e ' +
        (Numero * Numero).ToString
        );
    End else
      Memo1.Lines.Add(Numero.ToString + ' Não é número primo!');
end;

end.
