program PCalculadora;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmCalculadora},
  Calculadora.Interfaces in 'Calculadora.Interfaces.pas',
  Calculadora.Operacao in 'Calculadora.Operacao.pas',
  Calculadora in 'Calculadora.pas',
  Calculadora.Somar in 'Calculadora.Somar.pas',
  Calculadora.Subtrair in 'Calculadora.Subtrair.pas',
  Calculadora.Multiplicar in 'Calculadora.Multiplicar.pas',
  Calculadora.Dividir in 'Calculadora.Dividir.pas',
  Calculadora.Eventos in 'Calculadora.Eventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
