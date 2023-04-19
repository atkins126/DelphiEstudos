unit uRRTI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Rtti.Utils, System.JSON, System.Rtti;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    SetValue: TButton;
    [TJsonField('nome', 1)]
    Eric: TEdit;
    SetGet: TButton;
    [TJsonField('Sobrenome', 1)]
    Eric2: TEdit;
    Button2: TButton;
    [TJsonField('Telefone', 1)]
    Edit1: TEdit;
    [TJsonField('Endereco', 1)]
    Edit2: TEdit;
    [TJsonField('Cpf', 1)]
    Edit3: TEdit;
    [TJsonField('Rg', 1)]
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure SetValueClick(Sender: TObject);
    procedure SetGetClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var
    vRttiContext : TRttiContext;
    vRttiType : TRttiType;
    vRttiProperty : TRttiProperty;

begin

   vRttiContext :=   TRttiContext.Create;
     try
      vRttiType := vRttiContext.GetType(Self.ClassType);

      for vRttiProperty in vRttiType.GetProperties do
      begin
        Memo1.Lines.Add(vRttiProperty.Name +' : '+ vRttiProperty.GetValue(Self).ToString);
      end;

     finally
       vRttiContext.Free;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  aJson : TJsonObject;
begin
  aJson := TJsonObject.Create;
  try
    TRttiUtils.FormToJson(Self, aJson);
    Memo1.Lines.Add(aJson.ToString);
  finally
    aJson.Free;
  end;

end;

procedure TForm1.SetGetClick(Sender: TObject);
var
    vRttiContext : TRttiContext;
    vRttiType : TRttiType;
    vRttiField : TRttiField;
    Edit : TEdit;

begin

   vRttiContext :=   TRttiContext.Create;
     try
      vRttiType := vRttiContext.GetType(Self.ClassType);
      for vRttiField in vRttiType.GetFields do
      begin
        if vRttiField.Name = 'Eric' then
        begin
          Edit := Self.FindComponent(vRttiField.Name) as TEdit;
          Edit.Text := Eric2.Text;
        end;
      end;

     finally
       vRttiContext.Free;
     end;
end;

procedure TForm1.SetValueClick(Sender: TObject);
var
    vRttiContext : TRttiContext;
    vRttiType : TRttiType;
    vRttiField : TRttiField;
    Edit : TEdit;

begin

   vRttiContext :=   TRttiContext.Create;
     try
      vRttiType := vRttiContext.GetType(Self.ClassType);
      for vRttiField in vRttiType.GetFields do
      begin
        if vRttiField.Name = 'Eric' then
        begin
          Edit := Self.FindComponent(vRttiField.Name) as TEdit;
          Memo1.Lines.Add(Edit.Text);
        end;
      end;

     finally
       vRttiContext.Free;
     end;
end;

end.
