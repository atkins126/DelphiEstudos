unit UDesafioPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UDesafio.Validacao;


{$R *.dfm}

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Length(Trim(Edit1.Text)) > 0 then
  begin
    Edit1.Color := ClWhite;
    Label1.Visible := False;
  end;

end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  if Trim (Edit1.Text) = '' then
  begin
    Edit1.Color := ClRed;
    Edit1.SetFocus;
    Label1.Visible := True;
    Label1.Caption := 'Edit1 n�o pode ser vazio!';

  end;

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 if Trim (Edit2.Text) <> '' then
  begin
    Edit2.Color := ClRed;
    Label2.Visible := False;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TValidation.New
      .NotNull
        .Params
          .Component(Edit1)
          .ColorDanger(clRed)
          .DisplayLabel(Label1)
          .DisplayMsg('Edit1 N�o pode ser Vazio')
        .&End
      {.MinLengh
        .Component(Edit1)
        .ColorDanger(clRed)
        .DisplayComponent(Label1)
        .DisplayMsgError('Edit1 deve ter mais de 3 caracteres')
        .MinLenghValue(3)
      .&End
      .MaxLengh
        .Component(Edit1)
        .ColorDanger(clRed)
        .DisplayComponent(Label1)
        .DisplayMsgError('Edit1 n�o pode ter mais de 15 caracteres')
        .MaxLenghValue(15)
      .&End;
      }
end;

end.
