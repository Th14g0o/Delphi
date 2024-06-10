object frmCadResponsaveis: TfrmCadResponsaveis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Respons'#225'veis'
  ClientHeight = 404
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 187
    Top = 32
    Width = 295
    Height = 32
    Caption = 'Cadastro de Respons'#225'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 141
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 151
    Top = 141
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label4: TLabel
    Left = 16
    Top = 197
    Width = 15
    Height = 15
    Caption = 'RG'
  end
  object Label5: TLabel
    Left = 191
    Top = 197
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label6: TLabel
    Left = 16
    Top = 253
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label7: TLabel
    Left = 191
    Top = 253
    Width = 56
    Height = 15
    Caption = 'Operadora'
  end
  object Label8: TLabel
    Left = 400
    Top = 141
    Width = 114
    Height = 15
    Caption = 'Localizar Respons'#225'vel'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 162
    Width = 115
    Height = 23
    DataField = 'id'
    DataSource = DM.dsResponsaveis
    TabOrder = 0
  end
  object txtNome: TDBEdit
    Left = 151
    Top = 162
    Width = 218
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsResponsaveis
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 218
    Width = 155
    Height = 23
    DataField = 'rg'
    DataSource = DM.dsResponsaveis
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 191
    Top = 218
    Width = 170
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsResponsaveis
    MaxLength = 14
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 274
    Width = 151
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsResponsaveis
    MaxLength = 16
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 191
    Top = 274
    Width = 172
    Height = 23
    DataField = 'operadora'
    DataSource = DM.dsResponsaveis
    TabOrder = 5
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 16
    Top = 303
    Width = 353
    Height = 63
    Caption = 'Parentesco'
    Columns = 3
    DataField = 'parentesco'
    DataSource = DM.dsResponsaveis
    Items.Strings = (
      'Pai'
      'M'#227'e'
      'Respons'#225'vel')
    TabOrder = 6
    Values.Strings = (
      'Pai'
      'M'#227'e'
      'Respons'#225'vel')
  end
  object txtLocalizar: TEdit
    Left = 400
    Top = 162
    Width = 233
    Height = 23
    TabOrder = 7
    OnChange = txtLocalizarChange
  end
  object DBGrid1: TDBGrid
    Left = 400
    Top = 191
    Width = 233
    Height = 175
    DataSource = DM.dsResponsaveis
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Respons'#225'vel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 78
    Width = 472
    Height = 43
    DataSource = DM.dsResponsaveis
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 8
    OnClick = DBNavigator1Click
  end
end
