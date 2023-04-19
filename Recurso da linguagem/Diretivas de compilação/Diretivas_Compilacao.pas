unit Diretivas_Compilacao;

{$I diretivas.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  {$IFDEF DEBUG}
    Label1.Visible := True;
    Label1.Caption := 'Systema em modo debug';

  {$ELSE}
    Label1.Visible := False;

  {$ENDIF}

//  {$DEFINE SKIN_GREEN}

  {$IFDEF SKIN_BLACK}
    Self.Color := clBlack;
  {$ENDIF}

  {$IFDEF SKIN_RED}
    Self.Color := clRed;
  {$ENDIF}

  {$IFDEF SKIN_GREEN}
    Self.Color := clGreen;
  {$ENDIF}

  {$IFDEF MODODEV}
    {$IFDEF RELEASE}
      {$MESSAGE Erro 'Sistema Rodando no Modo Dev'}
    {$ENDIF}

    Self.Caption := Self.Caption + ' -- ' + Self.Name;
  {$ENDIF}


end;

end.
