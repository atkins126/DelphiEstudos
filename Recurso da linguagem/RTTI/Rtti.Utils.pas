unit Rtti.Utils;

interface

uses
  Vcl.Forms, System.Rtti, System.JSON, Vcl.StdCtrls;

type

  TJsonField = class(TCustomAttribute)
    private
    FJsonField: String;
    FaPosition: Integer;
    procedure SetJsonField(const Value: String);
    procedure SetaPosition(const Value: Integer);
    public
      constructor Create(aJsonField : String; aPosition : Integer);
      property JsonField : String read FJsonField write SetJsonField;
      property aPosition :Integer read FaPosition write SetaPosition;
  end;

  TRttiUtils = class
    private
    public
      class procedure FormToJson(aForm : TForm; var aResult : TJsonObject);

  end;

implementation

{ TRttiUtils }

class procedure TRttiUtils.FormToJson(aForm: TForm; var aResult: TJsonObject);
var
    vRttiContext : TRttiContext;
    vRttiType : TRttiType;
    vRttiField : TRttiField;
    vCustomAttribute : TCustomAttribute;

begin

   vRttiContext :=   TRttiContext.Create;
     try
      vRttiType := vRttiContext.GetType(aForm.ClassType);
      for vRttiField in vRttiType.GetFields do
        begin
         for vCustomAttribute in vRttiField.GetAttributes do
         begin
            if vCustomAttribute is TJsonField then
            begin
              aResult.AddPair(
                TJsonField(vCustomAttribute).JsonField,
                (aForm.FindComponent(vRttiField.Name) as TEdit).Text
              )
            end;
         end;
        end;

     finally
       vRttiContext.Free;
     end;
end;

{ TJsonField }

constructor TJsonField.Create(aJsonField : String; aPosition : Integer);
begin
  FJsonField := aJsonField;
  FaPosition := aPosition;
end;

procedure TJsonField.SetaPosition(const Value: Integer);
begin
  FaPosition := Value;
end;

procedure TJsonField.SetJsonField(const Value: String);
begin
  FJsonField := Value;
end;

end.
