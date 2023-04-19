unit Generic.Classe.Empresa;

interface

uses
  Generic.Classe.PessoaParams, Generic.Classe.Interfaces;
type
  TEmpresa = class(TInterfacedObject, iEmpresa<TEmpresa>)
    private
      FRazaoSocial : String;
      FParam : TPessoaParams<TEmpresa>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEmpresa<TEmpresa>;
      function RazaoSocial(aValue : String) : iEmpresa<TEmpresa>;
      function Params : TPessoaParams<TEmpresa>;
      function GetCadastro : String;
    end;

implementation

uses
  System.SysUtils;

{ TEmpresa }

constructor TEmpresa.Create;
begin
  FParam := TPessoaParams<TEmpresa>.Create(Self);
end;

destructor TEmpresa.Destroy;
begin
  FParam.Free;
  inherited;
end;

function TEmpresa.GetCadastro: String;
begin
 Result :=
    FRazaoSocial + ' - ' +
    FParam.Telefone + ' - ' +
    FParam.Endereco + ' - ' +
    FParam.Cep + ' - ' +
    FParam.PlanoSaude + ' - ' +
    IntToStr(FParam.Numero);

    if Assigned(FParam.Display())  then
    FParam.Display() (Result);
end;

class function TEmpresa.New: iEmpresa<TEmpresa>;
begin
  Result := Self.Create;
end;

function TEmpresa.Params: TPessoaParams<TEmpresa>;
begin
  Result := FParam;
end;

function TEmpresa.RazaoSocial(aValue: String): iEmpresa<TEmpresa>;
begin
  Result := Self;
  FRazaoSocial := aValue;
end;

end.
