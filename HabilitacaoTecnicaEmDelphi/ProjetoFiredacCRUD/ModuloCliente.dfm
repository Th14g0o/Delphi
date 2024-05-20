object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Repos\Delphi\HabilitacaoTecnicaEmDelphi\ProjetoFired' +
        'acCRUD\CrudCliente.db'
      'DriverID=sQLite')
    LoginPrompt = False
    Left = 112
    Top = 128
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 280
    Top = 120
    object FDQuery1codigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 200
    end
    object FDQuery1cpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object FDQuery1dt_nasc: TDateField
      FieldName = 'dt_nasc'
      Origin = 'dt_nasc'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 404
    Top = 50
  end
end
