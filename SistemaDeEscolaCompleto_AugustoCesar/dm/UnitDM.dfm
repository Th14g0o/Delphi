object DM: TDM
  Height = 162
  Width = 205
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=escolamodelo'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object tbResponsaveis: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'escolamodelo.responsaveis'
    Left = 112
    Top = 16
    object tbResponsaveisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbResponsaveisnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tbResponsaveisrg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
    end
    object tbResponsaveiscpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbResponsaveisoperadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operadora'
      Origin = 'operadora'
    end
    object tbResponsaveiscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object tbResponsaveisparentesco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentesco'
      Origin = 'parentesco'
      Size = 15
    end
  end
  object dsResponsaveis: TDataSource
    DataSet = tbResponsaveis
    Left = 112
    Top = 88
  end
end
