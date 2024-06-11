object DM: TDM
  Height = 208
  Width = 198
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Repos\Delphi\MascaraDinamica\BdTesteMask.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object Clientes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM Cliente;')
    Left = 120
    Top = 40
    object ClientesClienteId: TIntegerField
      FieldName = 'ClienteId'
      Origin = 'ClienteId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 200
    end
    object ClientesIdade: TIntegerField
      FieldName = 'Idade'
      Origin = 'Idade'
    end
    object ClientesFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'Fone1'
      EditMask = '(##)####-####;0;_'
      Size = 12
    end
    object ClientesFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'Fone2'
      EditMask = '(##)####-####;0;_'
      Size = 12
    end
  end
  object dsClientes: TDataSource
    DataSet = Clientes
    Left = 120
    Top = 104
  end
end
