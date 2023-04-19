unit View.Pessoa;

interface

uses
  View.Pessoa.Interfaces;

type
  TPessoa = class(TInterfacedObject, iPessoa)
    private
      FNome : String;
      FSobreNome : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
      function ValidarNome : Boolean;
      function Nome ( aValue : String ) : iPessoa;
      function SobreNome ( aValue : String ) : iPessoa;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.Nome(aValue: String): iPessoa;
begin
  Result := Self;
  FNome := aValue;
end;

function TPessoa.SobreNome(aValue: String): iPessoa;
begin
  Result := Self;
  FSobreNome := aValue;
end;

function TPessoa.ValidarNome: Boolean;
begin
  Result := (FNome <> '')
end;

end.
