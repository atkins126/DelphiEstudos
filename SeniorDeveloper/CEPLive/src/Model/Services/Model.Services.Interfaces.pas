unit Model.Services.Interfaces;

interface

uses
  System.SysUtils;

type
  iModelServicesCEP = interface
    ['{D5B97373-55B5-4C9E-BD9D-40A4DCD18DBA}']
    function Code ( aValue : String ) : iModelServicesCEP;
    function Display ( aValue : TProc<String> ) : iModelServicesCEP; overload;
    function Display : TProc<String>; overload;
    function Execute : iModelServicesCEP;
    function Return : String;
  end;

implementation

end.
