object FormSecundario: TFormSecundario
  Left = 0
  Top = 0
  Caption = 'FormSecundario'
  ClientHeight = 441
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 638
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 618
    object LabelTitulo: TLabel
      Left = 24
      Top = 5
      Width = 125
      Height = 25
      Caption = 'Jogos do Grid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object AreaJogos: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 638
    Height = 388
    Align = alClient
    Caption = 'Jogos'
    TabOrder = 1
    ExplicitWidth = 618
  end
end
