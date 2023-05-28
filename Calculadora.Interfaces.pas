unit Calculadora.Interfaces;

interface

uses
  Calculadora.Eventos;

type
  iCalculadoraDisplay = interface;
  iOperacao = interface;
  iOperacaoDisplay = interface;

  iCalculadora = interface
    ['{AA1A2D8C-3768-4BEE-9EAC-C806389BDE0D}']
    function Add(const AValue: String): iCalculadora;
    function Somar: iOperacao;
    function Subtrair: iOperacao;
    function Multiplicar: iOperacao;
    function Dividir: iOperacao;
    function Display: iCalculadoraDisplay;
  end;

  iOperacao = interface
    ['{C912122E-C6DE-4937-B008-8C21E263E008}']
    function Executar: String;
    function Display: iOperacaoDisplay;
  end;

  iCalculadoraDisplay = interface
    ['{F741B481-831C-4EBE-8D98-523D6CC8A2BD}']
    function Resultado(const AValue: TEventoDisplay): iCalculadoraDisplay;
    function &End: iCalculadora;
  end;

  iOperacaoDisplay = interface
    ['{A10EBB06-A7D6-499D-B118-2CA5BFB8B3B5}']
    function Resultado(const AValue: TEventoDisplay): iOperacaoDisplay;
    function &End: iOperacao;
  end;

implementation

end.
