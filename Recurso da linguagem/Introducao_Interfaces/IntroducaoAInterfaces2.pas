unit IntroducaoAInterfaces2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.Pessoa,
  View.Pessoa.interfaces;

type
  TForm1 = class(TForm)
    btnIntro: TButton;
    procedure btnIntroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     FPessoa : iPessoa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

//CTRl + Shift + A importa a uses

uses
  View.PessoaJuridica;

{$R *.dfm}

procedure TForm1.btnIntroClick(Sender: TObject);

begin
//  vPessoa := TPessoa.Create as iPessoa;
  if not TPessoa.New
        .Nome('Eric Galdino')
        .ValidarNome
      then
      ShowMessage('Ok')
      else
      ShowMessage('Ok');



//  vPessoa.Nome('Eric Galdino');
//    if vPessoa.ValidarNome then
//      ShowMessage('OK')
//    else
//      ShowMessage('Erro!')
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  FPessoa := TPessoaJuridica.New;
end;

end.