object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Primeiro Sistema'
  ClientHeight = 165
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 86
    Height = 15
    Caption = 'Digite seu nome'
  end
  object caixaNome: TEdit
    Left = 48
    Top = 61
    Width = 257
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 230
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
