object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora B'#225'sica'
  ClientHeight = 127
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 97
    Height = 15
    Caption = 'Digite um n'#250'mero'
  end
  object Label2: TLabel
    Left = 184
    Top = 16
    Width = 97
    Height = 15
    Caption = 'Digite um n'#250'mero'
  end
  object Label3: TLabel
    Left = 344
    Top = 16
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object Label5: TLabel
    Left = 155
    Top = 30
    Width = 17
    Height = 32
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 315
    Top = 30
    Width = 17
    Height = 32
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNumero1: TEdit
    Left = 24
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object txtNumero2: TEdit
    Left = 184
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object txtResultado: TEdit
    Left = 344
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object btSomar: TButton
    Left = 24
    Top = 76
    Width = 441
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = btSomarClick
  end
end
