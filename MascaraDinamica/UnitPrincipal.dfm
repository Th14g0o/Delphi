object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 474
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblCursor: TLabel
    Left = 8
    Top = 376
    Width = 48
    Height = 15
    Caption = 'lblCursor'
  end
  object lblMascara: TLabel
    Left = 8
    Top = 397
    Width = 57
    Height = 15
    Caption = 'lblMascara'
  end
  object lblText: TLabel
    Left = 8
    Top = 418
    Width = 34
    Height = 15
    Caption = 'lblText'
  end
  object lblTamanho: TLabel
    Left = 8
    Top = 439
    Width = 62
    Height = 15
    Caption = 'lblTamanho'
  end
  object lblTamanho2: TLabel
    Left = 88
    Top = 439
    Width = 62
    Height = 15
    Caption = 'lblTamanho'
  end
  object lblText2: TLabel
    Left = 88
    Top = 418
    Width = 34
    Height = 15
    Caption = 'lblText'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 593
    Height = 233
    DataSource = DM.dsClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object EditFone1: TDBEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 23
    DataField = 'Fone1'
    DataSource = DM.dsClientes
    MaxLength = 13
    TabOrder = 1
    OnEnter = EditFone1Enter
    OnKeyPress = EditFone1KeyPress
  end
  object EditFone2: TDBEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 23
    DataField = 'Fone2'
    DataSource = DM.dsClientes
    MaxLength = 13
    TabOrder = 2
    OnEnter = EditFone2Enter
    OnKeyPress = EditFone2KeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 80
    Width = 600
    Height = 25
    DataSource = DM.dsClientes
    TabOrder = 3
  end
end
