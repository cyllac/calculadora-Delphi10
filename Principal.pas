unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Calculadora.Interfaces;

type
  TFrmCalculadora = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtValorTotal: TEdit;
    Label1: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    Calculadora: iCalculadora;
    procedure ExibirResultado(const AValue: String);
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses
  Calculadora;

{$R *.dfm}

procedure TFrmCalculadora.btnDividirClick(Sender: TObject);
begin
  Calculadora
    .Add(edtValor1.Text)
    .Add(edtValor2.Text)
    .Dividir
      .Executar;
end;

procedure TFrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  Calculadora
    .Add(edtValor1.Text)
    .Add(edtValor2.Text)
    .Multiplicar
      .Executar;
end;

procedure TFrmCalculadora.btnSomarClick(Sender: TObject);
begin
  Calculadora
    .Add(edtValor1.Text)
    .Add(edtValor2.Text)
    .Somar
      .Executar;
end;

procedure TFrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  Calculadora
    .Add(edtValor1.Text)
    .Add(edtValor2.Text)
    .Subtrair
      .Executar;
end;

procedure TFrmCalculadora.ExibirResultado(const AValue: String);
begin
  edtValorTotal.Text := AValue;
end;

procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;

  Calculadora :=
    TCalculadora
      .New
        .Display
          .Resultado(ExibirResultado)
          .&End;
end;

end.
