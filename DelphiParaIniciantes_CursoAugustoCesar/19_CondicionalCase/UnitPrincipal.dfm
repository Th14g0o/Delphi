object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Condicional Case'
  ClientHeight = 123
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 149
    Height = 15
    Caption = 'Selecione o perfil do usuario'
  end
  object comboUsuario: TComboBox
    Left = 16
    Top = 45
    Width = 265
    Height = 23
    TabOrder = 0
    Items.Strings = (
      'Investidor'
      'Diretor'
      'Supervisor'
      'Gerente'
      'Vendedor')
  end
  object Button1: TButton
    Left = 16
    Top = 74
    Width = 265
    Height = 25
    Caption = 'Avan'#231'ar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
