unit Model.Services.CEP.Builder;

interface

uses
    Model.Services.CEP.Interfaces,
    Model.Services.Interfaces;

type
  TModelServicesCEPBuilder = class(TInterfacedObject, iModelServicesCEPBuilder)
    private
      FCEP : iModelServicesCEP;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelServicesCEPBuilder;
      function CEP : iModelServicesCEP;
  end;

implementation

uses
  Model.Services.CEP.ViaCEP,
  Model.Services.CEP.BrasilAPI,
  Model.Services.CEP.APICEP;

{ TModelServicesCEPBuilder }

function TModelServicesCEPBuilder.CEP: iModelServicesCEP;
begin
  if not Assigned(FCEP) then
    FCEP :=
      TModelServicesCEPViaCEP
        .New(
          TModelServicesCEPBrasilAPI
            .New(
              TModelServicesCEPAPICEP
                .New(nil)
            )
        );
  Result := FCEP;
end;

constructor TModelServicesCEPBuilder.Create;
begin

end;

destructor TModelServicesCEPBuilder.Destroy;
begin

  inherited;
end;

class function TModelServicesCEPBuilder.New: iModelServicesCEPBuilder;
begin
  Result := Self.Create;
end;

end.
