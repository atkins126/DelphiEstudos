unit Generic.Classe.Interfaces;

interface

uses
  Generic.Classe.PessoaParams;

type
  iPessoa<T : class> =  interface
    ['{DB180998-2E4B-43D7-9426-9B195A7CB23D}']
    function Nome (aValue : String): iPessoa<T>;
    function Params : TPessoaParams<T>;
    function GetCadastro : String;
  end;

  iEmpresa<T : class> = interface
    ['{2E17A101-2778-43DA-9F57-BC677BC24BF0}']
    function RazaoSocial(aValue : String) : iEmpresa<T>;
    function Params : TPessoaParams<T>;
    function GetCadastro : String;
  end;

implementation

end.
