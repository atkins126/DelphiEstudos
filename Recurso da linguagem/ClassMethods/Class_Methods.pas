unit Class_Methods;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExibirResultado (aValue : String);
  end;

var
  Form1: TForm1;

implementation

uses
  View.Calculadora;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
////var
////  vCalculadora : TCalculadora;
//begin
////  vCalculadora := TCalculadora;
////  try
//  ShowMessage(
//    IntToStr(vCalculadora.Somar(1, 2))
//    );
////  finally
//    vCalculadora.Free;
//  end;

//Parte Final melhora o Codigo um pouco mais

//begin
//  ShowMessage(
//    CurrToStr(
//      TCalculadora.Somar.Calcular(1, 2)
//            )
//      );
//end;

begin
  TCalculadora
    .Somar
      .Display(ExibirResultado)
      .Calcular(1, 2);
end;

procedure TForm1.Button2Click(Sender: TObject);
//begin
//  ShowMessage(
//    CurrToStr(
//      TCalculadora.Multiplicar.Calcular(2, 2)
//    )
//  );
//end;

begin
  TCalculadora
    .Multiplicar
      .Display(ExibirResultado)
        .Calcular(2, 2)
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
