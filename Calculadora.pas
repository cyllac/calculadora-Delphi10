unit Calculadora;

interface

uses
  Calculadora.Interfaces, System.Generics.Collections, System.SysUtils,
  Calculadora.Eventos;

type
  TCalculadora = class(TInterfacedObject, iCalculadora, iCalculadoraDisplay)
  private
    FLista: TList<Double>;
    FEventoDisplay: TEventoDisplay;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCalculadora;

    // iCalculadora
    function Add(const AValue: String): iCalculadora;
    function Somar: iOperacao;
    function Subtrair: iOperacao;
    function Multiplicar: iOperacao;
    function Dividir: iOperacao;
    function Display: iCalculadoraDisplay;

    // iCalculadoraDisplay
    function Resultado(const AValue: TEventoDisplay): iCalculadoraDisplay;
    function &End: iCalculadora;
  end;

implementation

uses
  Calculadora.Dividir, Calculadora.Multiplicar, Calculadora.Somar,
  Calculadora.Subtrair;

function TCalculadora.&End: iCalculadora;
begin
  Result := Self;
end;

function TCalculadora.Add(const AValue: String): iCalculadora;
begin
  Result := Self;
  FLista.Add(AValue.ToDouble());
end;

constructor TCalculadora.Create;
begin
  FLista := TList<Double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TCalculadora.Display: iCalculadoraDisplay;
begin
  Result := Self;
end;

function TCalculadora.Dividir: iOperacao;
begin
  Result := TDividir.New(FLista).Display.Resultado(FEventoDisplay).&End;
end;

function TCalculadora.Multiplicar: iOperacao;
begin
  Result := TMultiplicar.New(FLista).Display.Resultado(FEventoDisplay).&End;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Resultado(const AValue: TEventoDisplay): iCalculadoraDisplay;
begin
  Result := Self;
  FEventoDisplay := AValue;
end;

function TCalculadora.Somar: iOperacao;
begin
  Result := TSomar.New(FLista).Display.Resultado(FEventoDisplay).&End;
end;

function TCalculadora.Subtrair: iOperacao;
begin
  Result := TSubtrair.New(FLista).Display.Resultado(FEventoDisplay).&End;
end;

end.
