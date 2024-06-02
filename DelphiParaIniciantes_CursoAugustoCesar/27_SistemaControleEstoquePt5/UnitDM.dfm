object DM: TDM
  Height = 290
  Width = 430
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.produtos'
    Left = 96
    Top = 24
    object tbProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
      Required = True
    end
    object tbProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbProdutosfabricante: TStringField
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Required = True
      Size = 30
    end
    object tbProdutosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbProdutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object tbMovProdutos: TFDTable
    Active = True
    AfterPost = tbMovProdutosAfterPost
    BeforeDelete = tbMovProdutosBeforeDelete
    AfterDelete = tbMovProdutosAfterDelete
    IndexName = 'id_movimentacao'
    MasterSource = dsMovimentacoes
    MasterFields = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'movimentacoes_produtos'
    Left = 304
    Top = 24
    object tbMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbMovProdutosid_movimentacao: TIntegerField
      FieldName = 'id_movimentacao'
      Origin = 'id_movimentacao'
      Required = True
    end
    object tbMovProdutosid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
    end
    object tbMovProdutosqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
    end
    object tbMovProdutosnomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_produto'
      Size = 50
      Lookup = True
    end
  end
  object tbMovimentacoes: TFDTable
    Active = True
    BeforeDelete = tbMovimentacoesBeforeDelete
    AfterScroll = tbMovimentacoesAfterScroll
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes'
    Left = 192
    Top = 24
    object tbMovimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbMovimentacoestipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object tbMovimentacoesdataHora: TDateTimeField
      FieldName = 'dataHora'
      Origin = 'dataHora'
      Required = True
      EditMask = '##/##/#### ##:##:##;1;_'
    end
    object tbMovimentacoesresponsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
      Size = 30
    end
    object tbMovimentacoesobservacoes: TMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      BlobType = ftMemo
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 96
    Top = 88
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 192
    Top = 88
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 304
    Top = 88
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      'UPDATE produtos '
      'SET estoqueAtual = estoqueAtual + :pQtd'
      'WHERE id = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 48
    Top = 152
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      'UPDATE produtos '
      'SET estoqueAtual = estoqueAtual - :pQtd'
      'WHERE id = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 176
    Top = 152
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 304
    Top = 152
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 304
    Top = 216
  end
end
