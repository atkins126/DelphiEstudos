unit Model.Services.CEP.APICEP;

interface

uses
  Model.Services.Interfaces,
  System.SysUtils;

type
  TModelServicesCEPAPICEP = class(TInterfacedObject, iModelServicesCEP)
    private
      FParent : iModelServicesCEP;
      FReturn : String;
      FCode : String;
      FDisplay : TProc<String>;
      procedure _Return(aValue : String);
    public
      constructor Create(aParent : iModelServicesCEP);
      destructor Destroy; override;
      class function New(aParent : iModelServicesCEP) : iModelServicesCEP;
      function Code ( aValue : String ) : iModelServicesCEP;
      function Display ( aValue : TProc<String> ) : iModelServicesCEP; overload;
      function Display : TProc<String>; overload;
      function Execute : iModelServicesCEP;
      function Return : String;
  end;

implementation

uses
  Model.Connections.RestRequest;

{ TModelServicesCEPAPICEP }

function TModelServicesCEPAPICEP.Code(aValue: String): iModelServicesCEP;
begin
  Result := Self;
  FCode := aValue;
end;

constructor TModelServicesCEPAPICEP.Create(aParent : iModelServicesCEP);
begin
  FParent := aParent;
end;

destructor TModelServicesCEPAPICEP.Destroy;
begin

  inherited;
end;

function TModelServicesCEPAPICEP.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TModelServicesCEPAPICEP.Display(
  aValue: TProc<String>): iModelServicesCEP;
begin
  Result := Self;
  FDisplay := aValue;
end;

function TModelServicesCEPAPICEP.Execute: iModelServicesCEP;
begin
  Result := Self;
  try
    _Return('APICEP - ' +
    TModelConnectionsRestRequest
      .New
        .Get('https://ws.apicep.com/cep/'+ FCode +'.json')
        .Return);
  except
    if Assigned(FParent) then
        _Return(FParent.Code(FCode).Execute.Return);
  end;
end;

class function TModelServicesCEPAPICEP.New(aParent : iModelServicesCEP) : iModelServicesCEP;
begin
  Result := Self.Create(aParent);
end;

function TModelServicesCEPAPICEP.Return: String;
begin
   Result := FReturn;
end;

procedure TModelServicesCEPAPICEP._Return(aValue: String);
begin
  FReturn := aValue;
  if Assigned(FDisplay) then
    FDisplay(FReturn);
end;

end.
