unit Calculadora.Somar;

interface

uses
  Calculadora.Operacao, Calculadora.Interfaces, System.Generics.Collections, System.SysUtils;

type
  TSomar = class sealed (TOperacao)
  private
  public
    constructor Create(var AValue: TList<Double>);
    destructor Destroy; override;
    class function New(var AValue: TList<Double>): iOperacao;

    function Executar: String; override;
  end;

implementation


constructor TSomar.Create(var AValue: TList<Double>);
begin
  FLista := AValue;
end;

destructor TSomar.Destroy;
begin

  inherited;
end;

function TSomar.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].toString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble + FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

class function TSomar.New(var AValue: TList<Double>): iOperacao;
begin
  Result := Self.Create(AValue);
end;

end.
