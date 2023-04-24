unit UDesafio.Validador.Interfaces;

interface

uses
  System.Classes,  Vcl.Graphics;

type
  iValidationRulesParams = interface;
  iValidationRules = interface;

  iValidation = interface
    ['{0CF3F592-6FFA-4B53-B78C-6CD4AE7647A8}']
    function NotNull : iValidationRules;
  end;

  iValidationRules = interface
    ['{F6122293-2087-4FEB-B365-A6DFCFB447BD}']
    function Params: iValidationRulesParams;
    //Inje��o de Dependencia
    function &End : iValidation;
    end;
  iValidationRulesParams = interface
    ['{F976DF05-55C9-4D7E-B7EA-CDD3D681CA77}']
    function Component (aValue : TComponent): iValidationRulesParams; overload;
    function Component : TComponent; overload;
    function ColorDanger (aValue : TColor): iValidationRulesParams; overload;
    function ColorDanger : TColor; overload;
    function ColorDefault (avalue : TColor): iValidationRulesParams; overload;
    function ColorDefault : TColor; overload;
    function DisplayLabel (aValue : TComponent): iValidationRulesParams; overload;
    function DisplayLabel :TComponent; overload;
    function DisplayMsg (aValue : String): iValidationRulesParams; overload;
    function DisplayMsg : String; overload;
    function MinLength (aValue : Integer) : iValidationRulesParams; overload;
    function MinLength : Integer; overload;
    function MaxLength (aValue : Integer ): iValidationRulesParams; overload;
    function MaxLength : Integer; overload;
//  function &End : iValidationRulesParams;
    function &End : iValidationRules;
    end;

implementation

end.
