unit View.PessoaJuridica;

interface

uses
  View.Pessoa.interfaces;
  type
    TPessoaJuridica = Class(TInterfacedObject, iPessoa)
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
    End;

implementation

{ TPessoaJuridica }

constructor TPessoaJuridica.Create;
begin

end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoaJuridica.Nome(aValue: String): iPessoa;
begin
  Result := Self;
  FNome := aValue;
end;

function TPessoaJuridica.SobreNome(aValue: String): iPessoa;
begin
  Result := Self;
  FSobreNome := aValue;
end;

function TPessoaJuridica.ValidarNome: Boolean;
begin
  Result := false;
  if Length(FNome) > 3 then
  Result := True;

end;

end.
