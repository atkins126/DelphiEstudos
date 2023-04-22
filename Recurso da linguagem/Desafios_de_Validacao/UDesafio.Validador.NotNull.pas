unit UDesafio.Validador.NotNull;

interface

uses
  UDesafio.Validador.Interfaces;
  type
    TValidationRulesNotNull = class (TInterfacedObject, iValidationRules)
      private
      FParent : iValidation;
      FParams : iValidationRulesParams;
      public
        constructor Create (Parent : iValidation);
        destructor Destroy; override;
        class function New (Parent : iValidation) : iValidationRules;
        function Params : iValidationRulesParams;
        //Inje��o de Dependencia
        function &End : iValidationRules;
      end;

implementation

uses
  UDesafio.Validador.Parametros;

{ TValidationRulesNotNull }

function TValidationRulesNotNull.&End: iValidationRules;
begin
  Result := FParent;
end;

constructor TValidationRulesNotNull.Create;
begin
 FParent := Parent;
end;

destructor TValidationRulesNotNull.Destroy;
begin

  inherited;
end;

class function TValidationRulesNotNull.New (Parent : iValidation): iValidationRules;
begin
  Result := Self.Create (Parent);
end;

function TValidationRulesNotNull.Params: iValidationRulesParams;
begin
  if not Assigned(FParams) then
      FParams := TValidationRulesParams.New(Self);
    Result := Self;
end;

end.
