object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 112
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 218
    Top = 35
    Width = 8
    Height = 13
    Caption = '='
  end
  object lblValor1: TLabel
    Left = 16
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Valor 1:'
    FocusControl = edtValor1
  end
  object lblValor2: TLabel
    Left = 117
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Valor 2:'
    FocusControl = edtValor2
  end
  object lblTotal: TLabel
    Left = 232
    Top = 13
    Width = 28
    Height = 13
    Caption = 'Total:'
    FocusControl = edtValorTotal
  end
  object edtValor1: TEdit
    Left = 16
    Top = 32
    Width = 95
    Height = 21
    Color = clMoneyGreen
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 117
    Top = 32
    Width = 95
    Height = 21
    Color = clMoneyGreen
    TabOrder = 1
  end
  object edtValorTotal: TEdit
    Left = 232
    Top = 32
    Width = 95
    Height = 21
    Color = clSilver
    ReadOnly = True
    TabOrder = 2
  end
  object btnSomar: TButton
    Left = 16
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 95
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 4
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 175
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 255
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Dividir'
    TabOrder = 6
    OnClick = btnDividirClick
  end
end
