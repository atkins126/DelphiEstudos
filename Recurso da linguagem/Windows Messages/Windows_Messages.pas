unit Windows_Messages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Consts.Messeger;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MsgMouseMoove (var Message : TMessage); message WM_MOUSEMOVE;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  vParam : word;
  vValue : word;
  hReceiver : THandle;

begin
  vParam := GlobalAddAtom('Registro Alterado');
  vValue := GlobalAddAtom(PWideChar (Edit1.Text));
  hReceiver := FindWindow('TForm3', nil);

  if hReceiver > 0 then
    SendMessage(hReceiver, MYMSG_DIRECT, vParam, vValue);

    GlobalDeleteAtom(vParam);
    GlobalDeleteAtom(vValue);
end;

procedure TForm1.MsgMouseMoove(var Message: TMessage);
begin
  Memo1.Lines.Add(Format('%d - %d', [Message.LParam, Message.LParam]));
end;

end.
