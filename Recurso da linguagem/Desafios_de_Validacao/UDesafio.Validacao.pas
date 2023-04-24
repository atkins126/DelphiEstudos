unit UDesafio.Validacao;

interface

uses
  UDesafio.Validador.Interfaces;
  type
   TValidation = class (TInterfacedObject, iValidation)
   private
   FNotNull : iValidationRules;
   public
      constructor Create;
      destructor Destroy; override;
      class function New : ivalidation;
      function NotNull : iValidationRules;

   end;

implementation

uses
  UDesafio.Validador.NotNull;

{ TValidation }

constructor TValidation.Create;
begin

end;

destructor TValidation.Destroy;
begin

end;

class function TValidation.New: ivalidation;
begin
  Result := Self.Create;
end;

function TValidation.NotNull: iValidationRules;
begin
  if not Assigned (FNotNull) then
    FNotNull := TValidationRulesNotNull.New(Self);

  Result := FNotNull;


end;

end.
