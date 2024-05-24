object FormCadPacientes: TFormCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 24
    Top = 92
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 136
    Top = 92
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 24
    Top = 150
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 168
    Top = 208
    Width = 88
    Height = 15
    Caption = 'Data de cadastro'
  end
  object Label7: TLabel
    Left = 328
    Top = 92
    Width = 83
    Height = 15
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 81
    Align = alTop
    TabOrder = 7
    ExplicitTop = 5
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 250
      Height = 32
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 328
      Top = 16
      Width = 280
      Height = 49
      DataSource = DM.DsPaciente
      TabOrder = 0
    end
  end
  object DBEditIDPaciente: TDBEdit
    Left = 24
    Top = 109
    Width = 89
    Height = 23
    DataField = 'id'
    DataSource = DM.DsPaciente
    ReadOnly = True
    TabOrder = 0
  end
  object DBEditCPFPaciente: TDBEdit
    Left = 136
    Top = 109
    Width = 161
    Height = 23
    DataField = 'cpf'
    DataSource = DM.DsPaciente
    MaxLength = 14
    TabOrder = 1
  end
  object DBEditNomePaciente: TDBEdit
    Left = 24
    Top = 166
    Width = 273
    Height = 23
    DataField = 'nome'
    DataSource = DM.DsPaciente
    TabOrder = 2
  end
  object DBEditCelularPaciente: TDBEdit
    Left = 24
    Top = 224
    Width = 130
    Height = 23
    DataField = 'celular'
    DataSource = DM.DsPaciente
    MaxLength = 16
    TabOrder = 3
  end
  object DBEditDataPaciente: TDBEdit
    Left = 168
    Top = 224
    Width = 129
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.DsPaciente
    ReadOnly = True
    TabOrder = 4
  end
  object GridPacientes: TDBGrid
    Left = 328
    Top = 138
    Width = 288
    Height = 295
    DataSource = DM.DsPaciente
    TabOrder = 6
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
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object TxtBusca: TEdit
    Left = 328
    Top = 109
    Width = 288
    Height = 23
    TabOrder = 5
    OnChange = TxtBuscaChange
  end
end
