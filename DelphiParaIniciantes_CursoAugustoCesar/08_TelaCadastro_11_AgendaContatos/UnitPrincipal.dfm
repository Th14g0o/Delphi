object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de contatos'
  ClientHeight = 436
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 232
    Height = 32
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 94
    Height = 15
    Caption = 'Nome do contato'
  end
  object Label3: TLabel
    Left = 16
    Top = 168
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label5: TLabel
    Left = 16
    Top = 257
    Width = 67
    Height = 15
    Caption = 'Observa'#231#245'es'
  end
  object Label4: TLabel
    Left = 16
    Top = 377
    Width = 128
    Height = 15
    Caption = 'Data e Hora de Cadastro'
  end
  object DBText1: TDBText
    Left = 18
    Top = 395
    Width = 191
    Height = 17
    DataField = 'data'
    DataSource = DM.dsContatos
  end
  object Label6: TLabel
    Left = 392
    Top = 90
    Width = 96
    Height = 15
    Caption = 'Busca de contatos'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 136
    Width = 353
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsContatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 184
    Width = 193
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsContatos
    MaxLength = 14
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 16
    Top = 227
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.dsContatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 273
    Width = 353
    Height = 95
    DataField = 'observacoes'
    DataSource = DM.dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 61
    Width = 350
    Height = 28
    DataSource = DM.dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 392
    Top = 136
    Width = 266
    Height = 276
    DataSource = DM.dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Contatos cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 392
    Top = 107
    Width = 276
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
