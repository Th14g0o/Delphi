object DM: TDM
  Height = 208
  Width = 198
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Repos\Delphi\SalvandoFoto\Bd.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object QJogos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM Jogo;')
    Left = 120
    Top = 40
    object QJogosId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QJogosTitulo: TStringField
      FieldName = 'Titulo'
      Origin = 'Titulo'
      Size = 200
    end
    object QJogosFoto: TBlobField
      FieldName = 'Foto'
      Origin = 'Foto'
    end
  end
  object DSJogos: TDataSource
    DataSet = QJogos
    Left = 120
    Top = 104
  end
end
