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
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 624
    Height = 368
    Align = alClient
    DataSource = DataModule3.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 418
    Width = 624
    Height = 23
    Align = alBottom
    DataField = 'nome'
    DataSource = DataModule3.DataSource1
    TabOrder = 1
    OnChange = DBEdit1Change
    ExplicitTop = 424
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 624
    Height = 25
    DataSource = DataModule3.DataSource1
    Align = alTop
    TabOrder = 2
    ExplicitTop = -6
  end
  object Button1: TButton
    Left = 0
    Top = 393
    Width = 624
    Height = 25
    Align = alBottom
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
    ExplicitLeft = 136
    ExplicitTop = 344
    ExplicitWidth = 75
  end
end
