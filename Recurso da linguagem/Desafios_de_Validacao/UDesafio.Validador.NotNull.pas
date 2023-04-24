unit UDesafio.Validador.NotNull;

interface

uses
  UDesafio.Validador.Interfaces;
  type
    TValidationRulesNotNull = class (TInterfacedObject, iValidationRules)
      private
      [weak]
      FParent : iValidation;
      FParams : iValidationRulesParams;
      public
        constructor Create (Parent : iValidation);
        destructor Destroy; override;
        class function New (Parent : iValidation) : iValidationRules;
        function Params : iValidationRulesParams;
        //Injeção de Dependencia
        function &End : iValidation;
      end;

implementation

uses
  UDesafio.Validador.Parametros;



{ TValidationRulesNotNull }

function TValidationRulesNotNull.&End: iValidation;
begin
  Result := FParent;
end;

constructor TValidationRulesNotNull.Create(Parent : iValidation);
begin
 FParent := Parent;
end;

destructor TValidationRulesNotNull.Destroy;
begin

  inherited;
end;

class function TValidationRulesNotNull.New (Parent : iValidation) : iValidationRules;
begin
  Result := Self.Create(Parent);
end;

function TValidationRulesNotNull.Params: iValidationRulesParams;
begin
  if not Assigned(FParams) then
      FParams := TValidationRulesParams.New(Self);
    Result := FParams;
end;

end.
