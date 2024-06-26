object FrameJogo: TFrameJogo
  Left = 0
  Top = 0
  Width = 640
  Height = 120
  TabOrder = 0
  object Painel: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 634
    Height = 114
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitWidth = 374
    ExplicitHeight = 112
    object Desc: TLabel
      Left = 16
      Top = 24
      Width = 25
      Height = 15
      Caption = 'Desc'
    end
    object Titulo: TLabel
      Left = 16
      Top = 3
      Width = 30
      Height = 15
      Caption = 'Titulo'
    end
    object Valor: TLabel
      Left = 600
      Top = 3
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
  end
end
