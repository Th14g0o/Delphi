object formCadMovimentacao: TformCadMovimentacao
  Left = 289
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 518
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 298
    Height = 32
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 152
    Width = 122
    Height = 15
    Caption = 'Tipo de Movimenta'#231#227'o'
  end
  object Label3: TLabel
    Left = 24
    Top = 200
    Width = 62
    Height = 15
    Caption = 'Data e Hora'
  end
  object Label4: TLabel
    Left = 24
    Top = 248
    Width = 65
    Height = 15
    Caption = 'Responsavel'
  end
  object Label5: TLabel
    Left = 24
    Top = 293
    Width = 67
    Height = 15
    Caption = 'Observa'#231'oes'
  end
  object Label6: TLabel
    Left = 768
    Top = 81
    Width = 231
    Height = 25
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 768
    Top = 158
    Width = 99
    Height = 15
    Caption = 'Escolha o  Produto'
  end
  object Label8: TLabel
    Left = 1005
    Top = 158
    Width = 62
    Height = 15
    Caption = 'Quantidade'
  end
  object Label9: TLabel
    Left = 766
    Top = 477
    Width = 128
    Height = 20
    Caption = 'Total de Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTotalProdutos: TLabel
    Left = 904
    Top = 477
    Width = 18
    Height = 20
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 80
    Width = 304
    Height = 33
    DataSource = DM.dsMovimentacoes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 168
    Width = 209
    Height = 23
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DM.dsMovimentacoes
    Items.Strings = (
      'Entrada no Estoque'
      'Saida do Estoque')
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 216
    Width = 204
    Height = 23
    DataField = 'dataHora'
    DataSource = DM.dsMovimentacoes
    MaxLength = 19
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 264
    Width = 298
    Height = 23
    DataField = 'responsavel'
    DataSource = DM.dsMovimentacoes
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 312
    Width = 298
    Height = 185
    DataField = 'observacoes'
    DataSource = DM.dsMovimentacoes
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 168
    Width = 393
    Height = 329
    DataSource = DM.dsMovimentacoes
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Caption = 'DATA E HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONS'#193'VEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 768
    Top = 120
    Width = 320
    Height = 31
    DataSource = DM.dsMovProdutos
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 768
    Top = 174
    Width = 231
    Height = 23
    DataField = 'id_produto'
    DataSource = DM.dsMovProdutos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsProdutos
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 1005
    Top = 174
    Width = 83
    Height = 23
    DataField = 'qtd'
    DataSource = DM.dsMovProdutos
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 768
    Top = 203
    Width = 320
    Height = 265
    DataSource = DM.dsMovProdutos
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeProduto'
        Title.Caption = 'PRODUTO'
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'QUANTIDADE'
        Visible = True
      end>
  end
end
