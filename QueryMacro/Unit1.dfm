object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 205
    Width = 33
    Height = 15
    Caption = 'Tabela'
  end
  object Label2: TLabel
    Left = 8
    Top = 250
    Width = 57
    Height = 15
    Caption = 'Coluna Set'
  end
  object Label3: TLabel
    Left = 150
    Top = 250
    Width = 65
    Height = 15
    Caption = 'Coluna Whe'
  end
  object Label4: TLabel
    Left = 150
    Top = 298
    Width = 94
    Height = 15
    Caption = 'Coluna Valor Whe'
  end
  object Label5: TLabel
    Left = 8
    Top = 298
    Width = 86
    Height = 15
    Caption = 'Coluna Valor Set'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 193
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object TabEdit: TEdit
    Left = 8
    Top = 220
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object ColSetEdit: TEdit
    Left = 8
    Top = 265
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object ColWheEdit: TEdit
    Left = 150
    Top = 265
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object AtualizarBt: TButton
    Left = 293
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 4
    OnClick = AtualizarBtClick
  end
  object ConsultarBt: TButton
    Left = 150
    Top = 219
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 5
    OnClick = ConsultarBtClick
  end
  object ValWheEdit: TEdit
    Left = 150
    Top = 313
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object ValSetEdit: TEdit
    Left = 8
    Top = 313
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object FDQuerySel: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM !Tabela')
    Left = 560
    Top = 280
    MacroData = <
      item
        Value = Null
        Name = 'TABELA'
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Repos\Delphi\QueryMacro\BdTeste.db'
      'DriverID=sQLite')
    Left = 560
    Top = 224
  end
  object FDQueryUp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE !Tabela SET !UpColuna = :UpValor WHERE'
      '!PkColuna = :PkValor')
    Left = 560
    Top = 344
    ParamData = <
      item
        Name = 'UPVALOR'
        ParamType = ptInput
      end
      item
        Name = 'PKVALOR'
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = Null
        Name = 'TABELA'
      end
      item
        Value = Null
        Name = 'UPCOLUNA'
      end
      item
        Value = Null
        Name = 'PKCOLUNA'
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuerySel
    Left = 512
    Top = 280
  end
end
