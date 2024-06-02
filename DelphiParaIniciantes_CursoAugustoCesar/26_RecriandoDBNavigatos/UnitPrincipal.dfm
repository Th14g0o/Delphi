object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 16
    Top = 232
    Width = 585
    Height = 201
    DataSource = dsUsuarios
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btAbrir: TButton
    Left = 424
    Top = 96
    Width = 83
    Height = 33
    Caption = 'Abrir Tabela'
    TabOrder = 1
    OnClick = btAbrirClick
  end
  object btFechar: TButton
    Left = 513
    Top = 96
    Width = 88
    Height = 33
    Caption = 'Fechar Tabela'
    TabOrder = 2
    OnClick = btFecharClick
  end
  object btSalvar: TButton
    Left = 424
    Top = 135
    Width = 83
    Height = 33
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 3
    OnClick = btSalvarClick
  end
  object btCancelar: TButton
    Left = 513
    Top = 135
    Width = 88
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 4
    OnClick = btCancelarClick
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 184
    Width = 576
    Height = 33
    DataSource = dsUsuarios
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 5
  end
  object btDeletar: TButton
    Left = 335
    Top = 135
    Width = 83
    Height = 33
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btDeletarClick
  end
  object btInserir: TButton
    Left = 246
    Top = 135
    Width = 83
    Height = 33
    Caption = 'Inserir'
    TabOrder = 7
    OnClick = btInserirClick
  end
  object btAnterior: TButton
    Left = 71
    Top = 135
    Width = 50
    Height = 33
    Caption = '<'
    TabOrder = 8
    OnClick = btAnteriorClick
  end
  object btUltimo: TButton
    Left = 183
    Top = 135
    Width = 50
    Height = 33
    Caption = '>>'
    TabOrder = 9
    OnClick = btUltimoClick
  end
  object btProximo: TButton
    Left = 127
    Top = 135
    Width = 50
    Height = 33
    Caption = '>'
    TabOrder = 10
    OnClick = btProximoClick
  end
  object btPrimeiro: TButton
    Left = 16
    Top = 135
    Width = 49
    Height = 33
    Caption = '<<'
    TabOrder = 11
    OnClick = btPrimeiroClick
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'Server=127.0.0.1'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object tbUsuarios: TFDTable
    Active = True
    BeforeScroll = tbUsuariosBeforeScroll
    AfterScroll = tbUsuariosAfterScroll
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aula.usuarios'
    Left = 96
    Top = 24
  end
  object dsUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 96
    Top = 80
  end
end
