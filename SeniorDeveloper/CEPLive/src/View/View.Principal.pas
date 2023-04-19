unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayCEP ( aValue : String );
    procedure DisplayShow ( aValue : String );
  end;

var
  Form1: TForm1;

implementation

uses
  Model.Services.CEP.Builder;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TModelServicesCEPBuilder
  .New
    .CEP
      .Code('28905000')
      .Display(DisplayCEP)
    .Execute;
end;

procedure TForm1.DisplayCEP(aValue: String);
begin
  Memo1.Lines.Add(aValue);
end;

procedure TForm1.DisplayShow(aValue: String);
begin
  ShowMessage(aValue);
end;

end.
