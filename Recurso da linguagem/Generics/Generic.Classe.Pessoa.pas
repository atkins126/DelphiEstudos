unit Generic.Classe.Pessoa;

interface

uses
  Generic.Classe.PessoaParams, Generic.Classe.Interfaces;
  type
    TPessoa = class(TInterfacedObject, iPessoa<TPessoa>)
      private
        FNome : String;
        FParam : TPessoaParams<TPessoa>;
      public
        constructor Create;
        destructor Destroy; override;
        class function New : iPessoa<TPessoa>;
        function Nome (aValue : String): iPessoa<TPessoa>;
        function Params : TPessoaParams<TPessoa>;
        function GetCadastro : String;
      end;

implementation

uses
  System.SysUtils;

{ TPessoa }

constructor TPessoa.Create;
begin
  FParam := TPessoaParams<TPessoa>.Create(Self);
end;

destructor TPessoa.Destroy;
begin
  FParam.Free;
  inherited;
end;

function TPessoa.GetCadastro: String;
begin
  Result :=
    FNome + ' - ' +
    FParam.Telefone + ' - ' +
    FParam.Endereco + ' - ' +
    FParam.Cep + ' - ' +
    FParam.PlanoSaude + ' - ' +
    IntToStr(FParam.Numero);

    if Assigned(FParam.Display())  then
    FParam.Display() (Result);


end;

class function TPessoa.New: iPessoa<TPessoa>;
begin
    Result := Self.Create;
end;

function TPessoa.Nome(aValue : String): iPessoa<TPessoa>;
begin
  Result := Self;
  FNome := aValue;
end;
function TPessoa.Params: TPessoaParams<TPessoa>;
begin
  Result := FParam;
end;

end.
