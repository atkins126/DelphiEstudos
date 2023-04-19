unit Metodoos_Anonimos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ValidarCampo ( Sender : TObject );
  public
    { Public declarations }
    procedure LoadingProgress (aValue : Integer);
    procedure LoadMemo ( aValue : Integer);
  end;

var
  Form1: TForm1;

implementation

uses
  View.Loading;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  vLoading : TLoading;
begin

  vLoading := TLoading.Create;

  try
//    vLoading.OnLoadingProgress := LoadingProgress;
    vLoading.OnLoadingProgress := LoadMemo;
    vLoading.Preencher;
  finally
    vLoading.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  vLoading : TLoading;
begin

  vLoading := TLoading.Create;

  try
    vLoading.FazIsso(
    procedure (aValue : Integer)
    begin
      ShowMessage(IntToStr(aValue))
    end);
  finally
    vLoading.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.OnExit := ValidarCampo;
end;

procedure TForm1.LoadingProgress(aValue: Integer);
begin
  ProgressBar1.Min := 1;
  ProgressBar1.Max := 100;
  ProgressBar1.Position := aValue;
end;

procedure TForm1.LoadMemo(aValue: Integer);
begin
 Memo1.Lines.Add(IntToStr(aValue));
end;

procedure TForm1.ValidarCampo(Sender: TObject);
begin
  ShowMessage('Validado');
end;

end.
