object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora Simples'
  ClientHeight = 135
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object SomaBt: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = Calc
  end
  object MultiplicarBt: TButton
    Left = 200
    Top = 72
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 1
    OnClick = Calc
  end
  object SubtrairBt: TButton
    Left = 103
    Top = 72
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = Calc
  end
  object DividitBt: TButton
    Left = 298
    Top = 72
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
    OnClick = Calc
  end
  object Num1: TEdit
    Left = 8
    Top = 32
    Width = 170
    Height = 23
    TabOrder = 4
    OnChange = DigitarNum
  end
  object Num2: TEdit
    Left = 198
    Top = 32
    Width = 171
    Height = 23
    TabOrder = 5
    OnChange = DigitarNum
  end
end
