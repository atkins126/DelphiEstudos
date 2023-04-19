unit Generic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generic.Classe.Empresa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure ExibirResultado(aValue : String);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Generic.Classe.Pessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  vPessoa : TPessoa;
begin
      TPessoa.New
        .Nome('Eric Galdino')
          .Params
            .Telefone('75 9 8891 0494')
            .Endereco('Rua A')
            .Cep('44440520')
            .Numero(23)
            .PlanoSaude('Unimed')
            .Display(ExibirResultado)
           .&End
          .GetCadastro;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  vEmpresa : TEmpresa;

begin
      TEmpresa.New
        .RazaoSocial('Gti Sistemas')
          .Params
           .Telefone('75  8891 0494')
           .Endereco('Rua B')
           .Cep('44440520')
           .Numero(23)
           .PlanoSaude('Unimed PJ')
           .Display(ExibirResultado)
          .&End
        .GetCadastro;

end;

procedure TForm1.ExibirResultado(aValue: String);
begin
  ShowMessage(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
