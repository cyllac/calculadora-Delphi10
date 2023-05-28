unit Calculadora.Multiplicar;

interface

uses
  Calculadora.Operacao, Calculadora.Interfaces, System.Generics.Collections, System.SysUtils;

type
  TMultiplicar = class sealed (TOperacao)
  private
  public
    constructor Create(var AValue: TList<Double>);
    destructor Destroy; override;
    class function New(var AValue: TList<Double>): iOperacao;

    function Executar: String; override;
  end;


implementation

constructor TMultiplicar.Create(var AValue: TList<Double>);
begin
  FLista := AValue;
end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].toString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble * FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

class function TMultiplicar.New(var AValue: TList<Double>): iOperacao;
begin
  Result := Self.Create(AValue);
end;

end.
