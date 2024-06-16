object frmCadAlunos: TfrmCadAlunos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Alunos'
  ClientHeight = 541
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
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
  object Label8: TLabel
    Left = 391
    Top = 141
    Width = 81
    Height = 15
    Caption = 'Localizar Aluno'
  end
  object Label4: TLabel
    Left = 16
    Top = 197
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label5: TLabel
    Left = 208
    Top = 253
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Label6: TLabel
    Left = 16
    Top = 253
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label7: TLabel
    Left = 16
    Top = 309
    Width = 14
    Height = 15
    Caption = 'UF'
  end
  object Label9: TLabel
    Left = 248
    Top = 309
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label10: TLabel
    Left = 88
    Top = 309
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Label11: TLabel
    Left = 18
    Top = 365
    Width = 56
    Height = 15
    Caption = 'Operadora'
  end
  object Label12: TLabel
    Left = 151
    Top = 365
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label13: TLabel
    Left = 18
    Top = 421
    Width = 118
    Height = 15
    Caption = 'Autorizado a Sair Com'
  end
  object Label14: TLabel
    Left = 151
    Top = 471
    Width = 125
    Height = 15
    Caption = 'Responsavel pelo Carne'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 162
    Width = 115
    Height = 23
    DataField = 'id'
    DataSource = DM.dsAlunos
    TabOrder = 3
  end
  object txtNome: TDBEdit
    Left = 151
    Top = 162
    Width = 218
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsAlunos
    TabOrder = 4
  end
  object txtLocalizar: TEdit
    Left = 391
    Top = 162
    Width = 250
    Height = 23
    TabOrder = 2
    OnChange = txtLocalizarChange
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 78
    Width = 464
    Height = 43
    DataSource = DM.dsAlunos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 391
    Top = 191
    Width = 250
    Height = 274
    DataSource = DM.dsAlunos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome do Aluno'
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 218
    Width = 353
    Height = 23
    DataField = 'endereco'
    DataSource = DM.dsAlunos
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 274
    Width = 161
    Height = 23
    DataField = 'cidade'
    DataSource = DM.dsAlunos
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 274
    Width = 169
    Height = 23
    DataField = 'bairro'
    DataSource = DM.dsAlunos
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 330
    Width = 49
    Height = 23
    DataField = 'uf'
    DataSource = DM.dsAlunos
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 248
    Top = 330
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsAlunos
    MaxLength = 16
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 330
    Width = 137
    Height = 23
    DataField = 'cep'
    DataSource = DM.dsAlunos
    MaxLength = 10
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 18
    Top = 386
    Width = 113
    Height = 23
    DataField = 'operadora'
    DataSource = DM.dsAlunos
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 151
    Top = 386
    Width = 218
    Height = 23
    DataField = 'email'
    DataSource = DM.dsAlunos
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 18
    Top = 442
    Width = 351
    Height = 23
    DataField = 'autorizadoSairCom'
    DataSource = DM.dsAlunos
    TabOrder = 13
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 471
    Width = 123
    Height = 44
    Caption = 'Ensino Religioso'
    Columns = 2
    DataField = 'ensinoReligioso'
    DataSource = DM.dsAlunos
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 14
    Values.Strings = (
      '1'
      '0')
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 151
    Top = 492
    Width = 218
    Height = 23
    DataField = 'responsavelCarne'
    DataSource = DM.dsAlunos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsResponsaveis
    TabOrder = 15
  end
  object btRelatorio: TButton
    Left = 391
    Top = 490
    Width = 250
    Height = 25
    Caption = 'Gerar Rel'#225'torio'
    TabOrder = 16
    OnClick = btRelatorioClick
  end
end
