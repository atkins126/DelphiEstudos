unit SystemMessaging;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Messaging, Vcl.StdCtrls, FSystemMessaging2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
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
begin
  Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  MsgManeger : TMessageManager;
  FIdMsg : Integer;
begin
  MsgManeger := TMessageManager.DefaultManager;
  FIdMsg :=
    MsgManeger.SubscribeToMessage(
      TMessage<String>,
      procedure (const Sender : TObject; const Msg : TMessage)
      begin
        Label1.Caption := (Msg as TMessage<String>).Value;
      end
    )
end;

end.
