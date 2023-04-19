unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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

uses
  View.Pessoa;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
  vPessoa : TPessoa;
begin
  vPessoa := TPessoa.Create;
  try
    vPessoa
      .Nome('Eric ')
      .Sobrenome('Galdino');
  ShowMessage(vPessoa.Nome + ' ' + vPessoa.Sobrenome)
  finally
    vPessoa.Free;
  end;
end;

end.
