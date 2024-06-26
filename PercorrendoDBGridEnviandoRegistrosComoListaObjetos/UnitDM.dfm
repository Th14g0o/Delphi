object DM: TDM
  Height = 102
  Width = 254
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Repos\Delphi\PercorrendoDBGridEnviandoRegistrosComoL' +
        'istaObjetos\BdTeste.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object QJogo: TFDQuery
    Active = True
    Filter = 'Valor > 500'
    Connection = Conexao
    SQL.Strings = (
      'select * from Jogo')
    Left = 112
    Top = 16
    object QJogoJogoId: TIntegerField
      FieldName = 'JogoId'
      Origin = 'JogoId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QJogoTitulo: TStringField
      FieldName = 'Titulo'
      Origin = 'Titulo'
      Size = 200
    end
    object QJogoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'Valor'
    end
    object QJogoDesc: TStringField
      FieldName = 'Desc'
      Origin = '"Desc"'
      Size = 200
    end
  end
  object DSJogo: TDataSource
    DataSet = QJogo
    Left = 184
    Top = 16
  end
end
