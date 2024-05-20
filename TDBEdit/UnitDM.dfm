object DataModule3: TDataModule3
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Repos\Delphi\TDBEdit\Bd.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 216
    Top = 176
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Clientes')
    Left = 424
    Top = 224
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
      EditMask = '!\(99\)9999-9999;0;_'
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
    Left = 344
    Top = 312
  end
  object FDQueryUp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Clientes set nome = :nome '
      'where codigo = :cod')
    Left = 480
    Top = 296
    ParamData = <
      item
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        Name = 'COD'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object DateField1: TDateField
      FieldName = 'dt_nasc'
      Origin = 'dt_nasc'
    end
  end
end
