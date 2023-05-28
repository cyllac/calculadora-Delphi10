unit Calculadora.Subtrair;

interface

uses
  Calculadora.Operacao, Calculadora.Interfaces, System.Generics.Collections, System.SysUtils;

type
  TSubtrair = class sealed (TOperacao)
  private
  public
    constructor Create(var AValue: TList<Double>);
    destructor Destroy; override;
    class function New(var AValue: TList<Double>): iOperacao;

    function Executar: String; override;
  end;

implementation

constructor TSubtrair.Create(var AValue: TList<Double>);
begin
  FLista := AValue;
end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].toString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble - FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

class function TSubtrair.New(var AValue: TList<Double>): iOperacao;
begin
  Result := Self.Create(AValue);
end;

end.
