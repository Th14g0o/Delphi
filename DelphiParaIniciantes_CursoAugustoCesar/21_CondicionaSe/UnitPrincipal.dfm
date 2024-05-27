object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 216
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 27
    Width = 40
    Height = 15
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 32
    Top = 91
    Width = 32
    Height = 15
    Caption = 'Senha'
  end
  object txtUsuario: TEdit
    Left = 32
    Top = 48
    Width = 273
    Height = 23
    TabOrder = 0
  end
  object txtSenha: TEdit
    Left = 32
    Top = 112
    Width = 273
    Height = 23
    TabOrder = 1
  end
  object btLogin: TButton
    Left = 32
    Top = 160
    Width = 273
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btLoginClick
  end
end
