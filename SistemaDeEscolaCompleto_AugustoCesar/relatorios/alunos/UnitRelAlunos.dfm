object frmRelAlunos: TfrmRelAlunos
  Left = 0
  Top = 0
  Caption = 'frmRelAlunos'
  ClientHeight = 616
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object relAlunos: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DM.dsAlunos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relatorio de Alunos'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 106
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 184
        Top = 17
        Width = 331
        Height = 41
        Caption = 'Rel'#225'torio de Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 144
        Top = 61
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 16
        Top = 61
        Width = 124
        Height = 16
        Caption = 'Rel'#225'torio gerado em:'
      end
      object RLLabel6: TRLLabel
        Left = 14
        Top = 84
        Width = 42
        Height = 16
        Caption = 'Nome:'
      end
      object RLLabel3: TRLLabel
        Left = 326
        Top = 84
        Width = 41
        Height = 16
        Caption = 'Email:'
      end
      object RLLabel7: TRLLabel
        Left = 582
        Top = 84
        Width = 48
        Height = 16
        Caption = 'Celular:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 144
      Width = 718
      Height = 44
      object RLDBText1: TRLDBText
        Left = 14
        Top = 14
        Width = 297
        Height = 16
        DataField = 'nome'
        DataSource = DM.dsAlunos
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 326
        Top = 14
        Width = 234
        Height = 16
        DataField = 'email'
        DataSource = DM.dsAlunos
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 576
        Top = 14
        Width = 121
        Height = 16
        DataField = 'celular'
        DataSource = DM.dsAlunos
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 29
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 626
        Top = 6
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
    end
  end
end
