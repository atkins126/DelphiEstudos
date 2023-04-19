unit View.Pessoa.Interfaces;

interface

type

  iPessoa = interface
    ['{039F2380-CD5D-47E4-B9B1-1670C6A92A59}']
    function ValidarNome : Boolean;
    function Nome ( aValue : String ) : iPessoa;
    function SobreNome ( aValue : String ) : iPessoa;
  end;

implementation

end.
