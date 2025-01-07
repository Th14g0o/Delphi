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
  object Image: TImage
    Left = 376
    Top = 106
    Width = 240
    Height = 240
    Stretch = True
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 106
    Width = 330
    Height = 330
    DataSource = DM.DSJogos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Titulo'
        Visible = True
      end>
  end
  object EdtTitulo: TDBEdit
    Left = 8
    Top = 65
    Width = 121
    Height = 24
    DataField = 'Titulo'
    DataSource = DM.DSJogos
    TabOrder = 1
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 16
    Width = 600
    Height = 25
    DataSource = DM.DSJogos
    TabOrder = 2
  end
  object BtIncluir: TButton
    Left = 143
    Top = 64
    Width = 100
    Height = 25
    Caption = 'Incluir Imagem'
    TabOrder = 3
    OnClick = BtIncluirClick
  end
  object BtConsultar: TButton
    Left = 508
    Top = 64
    Width = 100
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = BtConsultarClick
  end
  object LabelErro: TEdit
    Left = 8
    Top = 445
    Width = 600
    Height = 23
    TabOrder = 5
    Text = 'LabelErro'
  end
  object OpenDialog: TOpenDialog
    Left = 400
    Top = 352
  end
end
