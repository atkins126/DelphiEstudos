unit Asserts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  Procedure AssertLog (const Message : String; const FileName : String; lineNumber : Integer; ErroAddr : Pointer );
  begin
    ShowMessage(Message + ' - ' + FileName + ' - ' + IntToStr(lineNumber));
  end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
// Criado para o Tray Except
var
  aValue : Currency;

begin
//  Assert(
//    StrToInt(Edit2.Text) <> 0,
//    'Valor da divis�o nao pode ser diferente de Zero'
//  );

  Try
    aValue := StrToInt(Edit1.Text) / StrToInt(Edit2.Text);
  except on E : Exception do
    Assert(False, E.Message);
  End;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AssertErrorProc := AssertLog;
end;

end.
