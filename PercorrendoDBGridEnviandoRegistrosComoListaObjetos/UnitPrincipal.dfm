object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 273
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 538
    Height = 176
    Align = alClient
    DataSource = DM.DSJogo
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Titulo'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Width = 200
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 538
    Height = 25
    DataSource = DM.DSJogo
    Align = alTop
    TabOrder = 1
  end
  object BtnEnviar: TButton
    AlignWithMargins = True
    Left = 3
    Top = 245
    Width = 538
    Height = 25
    Align = alBottom
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BtnEnviarClick
  end
  object EditPesquisa: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 538
    Height = 23
    Align = alTop
    TabOrder = 3
    OnChange = EditPesquisaChange
  end
end
