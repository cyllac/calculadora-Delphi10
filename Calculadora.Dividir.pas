unit Calculadora.Dividir;

interface

uses
  Calculadora.Operacao, Calculadora.Interfaces, System.Classes, System.Generics.Collections, System.SysUtils;

type
  TDividir = class sealed (TOperacao)
  private
  public
    constructor Create(var AValue: TList<Double>);
    destructor Destroy; override;
    class function New(var AValue: TList<Double>): iOperacao;

    function Executar: String; override;
  end;

implementation

constructor TDividir.Create(var AValue: TList<Double>);
begin
  FLista := AValue;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].toString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble / FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

class function TDividir.New(var AValue: TList<Double>): iOperacao;
begin
  Result := Self.Create(AValue);
end;

end.
