unit View.Pessoa;

interface
uses
  SysUtils;

type
    TPessoa = class

          private
            { private declarations }
            FSobrenome : String;
            FNome : String;
          FUltimonome: string;
          procedure SetUltimonome(const Value: string);

          public
            function Nome (aValue : String ): TPessoa; overload;
            function Nome : String; overload;
            function Sobrenome (aValue : String ) : TPessoa; overload;
            Function Sobrenome : String; overload;

          property Ultimonome :string read FUltimonome write SetUltimonome;
          end;

implementation

{ TPessoa }

function TPessoa.Nome(aValue: String): TPessoa;
begin
  Result := Self;
  if Trim(aValue) = '' then
    raise Exception.Create('Nome não pode ser vazio');
  FNome := aValue;
end;

function TPessoa.Sobrenome(aValue: String): TPessoa;
begin
  Result := Self;
  FSobrenome := aValue;

end;

function TPessoa.Nome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetUltimonome(const Value: string);
begin
  FUltimonome := Value;
end;

function TPessoa.Sobrenome: String;
begin
  Result := FSobrenome;
end;

end.
