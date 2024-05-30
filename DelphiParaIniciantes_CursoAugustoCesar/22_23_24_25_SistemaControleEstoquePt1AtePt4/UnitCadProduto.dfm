object formCadProduto: TformCadProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 437
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 248
    Height = 32
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 55
    Height = 15
    Caption = 'Fabricante'
  end
  object Label4: TLabel
    Left = 248
    Top = 144
    Width = 44
    Height = 15
    Caption = 'Validade'
  end
  object Label5: TLabel
    Left = 24
    Top = 200
    Width = 127
    Height = 15
    Caption = 'Quantidade em Estoque'
  end
  object DBNavigator1: TDBNavigator
    Left = 328
    Top = 21
    Width = 424
    Height = 49
    DataSource = DM.dsProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 160
    Width = 201
    Height = 23
    DataField = 'fabricante'
    DataSource = DM.dsProdutos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 216
    Width = 149
    Height = 23
    DataField = 'estoqueAtual'
    DataSource = DM.dsProdutos
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 248
    Top = 160
    Width = 137
    Height = 23
    DataField = 'validade'
    DataSource = DM.dsProdutos
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 104
    Width = 361
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsProdutos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 416
    Top = 104
    Width = 336
    Height = 305
    DataSource = DM.dsProdutos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME DO PRODUTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
