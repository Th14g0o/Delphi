object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblResultado: TLabel
    Left = 40
    Top = 172
    Width = 130
    Height = 15
    Caption = '--------------------------'
  end
  object Label1: TLabel
    Left = 40
    Top = 27
    Width = 86
    Height = 15
    Caption = 'Digite seu nome'
  end
  object Label2: TLabel
    Left = 40
    Top = 83
    Width = 84
    Height = 15
    Caption = 'Digite sua idade'
  end
  object txtNome: TEdit
    Left = 40
    Top = 48
    Width = 177
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 40
    Top = 141
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtIdade: TEdit
    Left = 40
    Top = 104
    Width = 177
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 2
  end
end
