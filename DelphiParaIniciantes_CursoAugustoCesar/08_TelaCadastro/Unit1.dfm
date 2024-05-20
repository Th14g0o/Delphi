object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 441
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 332
      Height = 47
      Caption = 'Cadastro de clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 419
      Top = 22
      Width = 91
      Height = 40
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 517
      Top = 22
      Width = 91
      Height = 40
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 614
      Top = 22
      Width = 91
      Height = 40
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 711
      Top = 22
      Width = 91
      Height = 40
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 815
    Height = 360
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados pessoais'
      object Label2: TLabel
        Left = 12
        Top = 11
        Width = 94
        Height = 15
        Caption = 'Codigo do cliente'
      end
      object Label3: TLabel
        Left = 12
        Top = 69
        Width = 90
        Height = 15
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 180
        Top = 11
        Width = 77
        Height = 15
        Caption = 'Tipo de cliente'
      end
      object Label5: TLabel
        Left = 348
        Top = 11
        Width = 15
        Height = 15
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 521
        Top = 11
        Width = 97
        Height = 15
        Caption = 'Data de expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 12
        Top = 133
        Width = 49
        Height = 15
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 12
        Top = 197
        Width = 31
        Height = 15
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 176
        Top = 197
        Width = 37
        Height = 15
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 12
        Top = 261
        Width = 14
        Height = 15
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 120
        Top = 262
        Width = 21
        Height = 15
        Caption = 'CPF'
      end
      object Label12: TLabel
        Left = 348
        Top = 69
        Width = 44
        Height = 15
        Caption = 'Telefone'
      end
      object Label13: TLabel
        Left = 521
        Top = 69
        Width = 37
        Height = 15
        Caption = 'Celular'
      end
      object Label14: TLabel
        Left = 348
        Top = 133
        Width = 29
        Height = 15
        Caption = 'Email'
      end
      object Edit1: TEdit
        Left = 12
        Top = 32
        Width = 149
        Height = 23
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 12
        Top = 90
        Width = 313
        Height = 23
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 348
        Top = 32
        Width = 149
        Height = 23
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 521
        Top = 32
        Width = 149
        Height = 23
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 12
        Top = 154
        Width = 313
        Height = 23
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 12
        Top = 219
        Width = 149
        Height = 23
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 176
        Top = 219
        Width = 149
        Height = 23
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 12
        Top = 283
        Width = 77
        Height = 23
        TabOrder = 7
      end
      object Edit9: TEdit
        Left = 120
        Top = 283
        Width = 169
        Height = 23
        TabOrder = 8
      end
      object Edit10: TEdit
        Left = 348
        Top = 90
        Width = 149
        Height = 23
        TabOrder = 9
      end
      object Edit11: TEdit
        Left = 521
        Top = 90
        Width = 149
        Height = 23
        TabOrder = 10
      end
      object Edit12: TEdit
        Left = 348
        Top = 154
        Width = 322
        Height = 23
        TabOrder = 11
      end
      object CheckBox1: TCheckBox
        Left = 348
        Top = 215
        Width = 125
        Height = 17
        Caption = 'Cliente negativado'
        TabOrder = 12
      end
      object ComboBox1: TComboBox
        Left = 180
        Top = 32
        Width = 145
        Height = 23
        Style = csDropDownList
        TabOrder = 13
        Items.Strings = (
          'Fisico'
          'Juridico')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do C'#244'njugue'
      ImageIndex = 1
      object Label15: TLabel
        Left = 12
        Top = 11
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Label16: TLabel
        Left = 12
        Top = 67
        Width = 105
        Height = 15
        Caption = 'Data de nascimento'
      end
      object Label17: TLabel
        Left = 284
        Top = 11
        Width = 21
        Height = 15
        Caption = 'CPF'
      end
      object Edit13: TEdit
        Left = 12
        Top = 32
        Width = 253
        Height = 23
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 12
        Top = 88
        Width = 157
        Height = 23
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 284
        Top = 32
        Width = 169
        Height = 23
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 284
        Top = 67
        Width = 469
        Height = 174
        Caption = 'Contato do Conjugue'
        TabOrder = 3
        object Label19: TLabel
          Left = 16
          Top = 29
          Width = 37
          Height = 15
          Caption = 'Celular'
        end
        object Label18: TLabel
          Left = 240
          Top = 29
          Width = 56
          Height = 15
          Caption = 'Operadora'
        end
        object Label20: TLabel
          Left = 16
          Top = 79
          Width = 29
          Height = 15
          Caption = 'Email'
        end
        object Edit16: TEdit
          Left = 16
          Top = 50
          Width = 209
          Height = 23
          TabOrder = 0
        end
        object Edit18: TEdit
          Left = 16
          Top = 98
          Width = 433
          Height = 23
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 240
          Top = 50
          Width = 209
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Tim'
            'Claro'
            'Vivo')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
      object Label21: TLabel
        Left = 12
        Top = 11
        Width = 48
        Height = 15
        Caption = 'Profiss'#227'o'
      end
      object Label22: TLabel
        Left = 12
        Top = 67
        Width = 45
        Height = 15
        Caption = 'Empresa'
      end
      object Label23: TLabel
        Left = 12
        Top = 123
        Width = 167
        Height = 15
        Caption = 'Endere'#231'o completo do trabalho'
      end
      object Label24: TLabel
        Left = 12
        Top = 179
        Width = 108
        Height = 15
        Caption = 'Telefone do trabalho'
      end
      object Label25: TLabel
        Left = 196
        Top = 179
        Width = 108
        Height = 15
        Caption = 'Telefone do trabalho'
      end
      object Edit17: TEdit
        Left = 12
        Top = 32
        Width = 253
        Height = 23
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 12
        Top = 88
        Width = 253
        Height = 23
        TabOrder = 1
      end
      object Edit20: TEdit
        Left = 12
        Top = 144
        Width = 506
        Height = 23
        TabOrder = 2
      end
      object Edit21: TEdit
        Left = 12
        Top = 200
        Width = 167
        Height = 23
        TabOrder = 3
      end
      object Edit22: TEdit
        Left = 196
        Top = 200
        Width = 167
        Height = 23
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Analise previa'
      ImageIndex = 3
      object Label26: TLabel
        Left = 12
        Top = 11
        Width = 90
        Height = 15
        Caption = 'Salario do cliente'
      end
      object Label27: TLabel
        Left = 12
        Top = 67
        Width = 105
        Height = 15
        Caption = 'Salario do conjugue'
      end
      object Label28: TLabel
        Left = 12
        Top = 123
        Width = 144
        Height = 15
        Caption = 'Limite de credito do cliente'
      end
      object Label29: TLabel
        Left = 12
        Top = 179
        Width = 137
        Height = 15
        Caption = 'Limite de credito utilizado'
      end
      object Label30: TLabel
        Left = 12
        Top = 235
        Width = 134
        Height = 15
        Caption = 'Limite de credito restante'
      end
      object Label31: TLabel
        Left = 284
        Top = 11
        Width = 67
        Height = 15
        Caption = 'Observa'#231#245'es'
      end
      object Edit23: TEdit
        Left = 12
        Top = 32
        Width = 253
        Height = 23
        TabOrder = 0
      end
      object Edit24: TEdit
        Left = 12
        Top = 88
        Width = 253
        Height = 23
        TabOrder = 1
      end
      object Edit25: TEdit
        Left = 12
        Top = 144
        Width = 253
        Height = 23
        TabOrder = 2
      end
      object Edit26: TEdit
        Left = 12
        Top = 200
        Width = 253
        Height = 23
        TabOrder = 3
      end
      object Edit27: TEdit
        Left = 12
        Top = 256
        Width = 253
        Height = 23
        TabOrder = 4
      end
      object Memo1: TMemo
        Left = 284
        Top = 32
        Width = 493
        Height = 135
        TabOrder = 5
      end
    end
  end
end
