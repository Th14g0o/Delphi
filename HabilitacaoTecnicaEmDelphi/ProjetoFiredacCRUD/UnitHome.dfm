object FormHome: TFormHome
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 440
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 608
    Height = 417
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      object Label5: TLabel
        Left = 40
        Top = 8
        Width = 261
        Height = 37
        Caption = 'Listagem de clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 40
        Top = 64
        Width = 529
        Height = 273
        DataSource = DataModule1.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object AtualizarBt: TButton
        Left = 40
        Top = 351
        Width = 75
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 1
        OnClick = AtualizarBtClick
      end
      object VisualizarBt: TButton
        Left = 136
        Top = 351
        Width = 75
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 2
        OnClick = VisualizarBtClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      object Label1: TLabel
        Left = 48
        Top = 75
        Width = 106
        Height = 17
        Caption = 'Digite seu nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 48
        Top = 147
        Width = 192
        Height = 17
        Caption = 'Digite sua data de nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 272
        Top = 147
        Width = 94
        Height = 17
        Caption = 'Digite seu CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 48
        Top = 11
        Width = 231
        Height = 37
        Caption = 'Castro de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CampoNome: TEdit
        Left = 48
        Top = 98
        Width = 481
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CampoDt: TEdit
        Left = 48
        Top = 170
        Width = 209
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = CampoDtChange
      end
      object CampoCpf: TEdit
        Left = 272
        Top = 170
        Width = 257
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Criar: TButton
        Left = 48
        Top = 224
        Width = 209
        Height = 33
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = CriarClick
      end
    end
  end
end
