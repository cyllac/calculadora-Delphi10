unit Calculadora.Operacao;

interface

uses
  Calculadora.Interfaces, System.Generics.Collections, Calculadora.Eventos;

type
  TOperacao = class(TInterfacedObject, iOperacao, iOperacaoDisplay)
  protected
    FLista: TList<Double>;
    FEventoDisplay: TEventoDisplay;
    procedure DisplayTotal(const AValue: String);
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacao;

    // iOperacao
    function Executar: String; virtual;
    function Display: iOperacaoDisplay;

    // iOperacaoDisplay
    function Resultado(const AValue: TEventoDisplay): iOperacaoDisplay;
    function &End: iOperacao;
  end;

implementation

function TOperacao.&End: iOperacao;
begin
  Result := Self;
end;

constructor TOperacao.Create;
begin

end;

destructor TOperacao.Destroy;
begin

  inherited;
end;

function TOperacao.Display: iOperacaoDisplay;
begin
  Result := Self;
end;

procedure TOperacao.DisplayTotal(const AValue: String);
begin
  if Assigned(FEventoDisplay) then
    FEventoDisplay(AValue);
end;

function TOperacao.Executar: String;
begin
  FLista.Clear;
end;

class function TOperacao.New: iOperacao;
begin
  Result := Self.Create;
end;

function TOperacao.Resultado(const AValue: TEventoDisplay): iOperacaoDisplay;
begin
  Result := Self;
  FEventoDisplay := AValue;
end;

end.
