unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Consts.Messeger;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
  private
    { Private declarations }
    procedure MyMsgs (var Message : TMessage); message MYMSG_DIRECT;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

{ TForm3 }

procedure TForm3.MyMsgs(var Message: TMessage);
var
  vParam : String;
  vValue : String;
begin
  SetLength(vParam, 255);
  Setlength(vValue, 255);

  SetLength(vParam, GlobalGetAtomName(Message.WParam, PChar (vParam), 255));
  SetLength(vValue, GlobalGetAtomName(Message.lParam, PChar (vValue), 255));
  Memo1.Lines.Add(Format ('%s - %s', [vParam, vValue]));

end;

end.
