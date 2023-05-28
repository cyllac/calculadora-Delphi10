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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 218
    Top = 35
    Width = 8
    Height = 13
    Caption = '='
  end
  object Label2: TLabel
    Left = 16
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Valor 1:'
  end
  object Label3: TLabel
    Left = 117
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Valor 2:'
  end
  object Label4: TLabel
    Left = 232
    Top = 13
    Width = 28
    Height = 13
    Caption = 'Total:'
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 95
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 117
    Top = 32
    Width = 95
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 232
    Top = 32
    Width = 95
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 16
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 95
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 175
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
  end
  object Button4: TButton
    Left = 255
    Top = 72
    Width = 72
    Height = 25
    Caption = 'Dividir'
    TabOrder = 6
  end
end
