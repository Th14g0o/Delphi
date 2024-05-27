object DM: TDM
  Height = 103
  Width = 254
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Server=127.0.0.1'
      'Database=aula'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 104
    Top = 24
    ParamData = <
      item
        Name = 'pConsulta'
      end>
  end
  object dsConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 192
    Top = 24
  end
end
