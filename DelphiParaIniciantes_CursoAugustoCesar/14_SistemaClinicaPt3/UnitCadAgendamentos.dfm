object FormCadAgendamentos: TFormCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
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
    Top = 148
    Width = 24
    Height = 15
    Caption = 'Data'
  end
  object Label4: TLabel
    Left = 117
    Top = 93
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 92
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label5: TLabel
    Left = 117
    Top = 148
    Width = 26
    Height = 15
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 24
    Top = 204
    Width = 71
    Height = 15
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 24
    Top = 260
    Width = 93
    Height = 15
    Caption = 'Nome do Medico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitTop = 5
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 173
      Height = 32
      Caption = 'Agendamentos'
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
      DataSource = DM.DsAgendamento
      TabOrder = 0
    end
  end
  object DBEditIDAgendamento: TDBEdit
    Left = 24
    Top = 109
    Width = 87
    Height = 23
    DataField = 'id'
    DataSource = DM.DsAgendamento
    ReadOnly = True
    TabOrder = 1
  end
  object LookupComboBoxFkPaciente: TDBLookupComboBox
    Left = 117
    Top = 109
    Width = 188
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.DsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.DsPaciente
    TabOrder = 2
  end
  object DBEditDataAgendamento: TDBEdit
    Left = 24
    Top = 165
    Width = 87
    Height = 23
    DataField = 'data'
    DataSource = DM.DsAgendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBEditHoraAgendamento: TDBEdit
    Left = 117
    Top = 165
    Width = 87
    Height = 23
    DataField = 'hora'
    DataSource = DM.DsAgendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBComboBoxEspecialidadeAgendameto: TDBComboBox
    Left = 24
    Top = 220
    Width = 209
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.DsAgendamento
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 5
  end
  object DBEditNomeMedicoAgendamento: TDBEdit
    Left = 24
    Top = 277
    Width = 209
    Height = 23
    DataField = 'medico'
    DataSource = DM.DsAgendamento
    TabOrder = 6
  end
  object GridPacientes: TDBGrid
    Left = 328
    Top = 93
    Width = 288
    Height = 340
    DataSource = DM.DsAgendamento
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Visible = True
      end>
  end
end
