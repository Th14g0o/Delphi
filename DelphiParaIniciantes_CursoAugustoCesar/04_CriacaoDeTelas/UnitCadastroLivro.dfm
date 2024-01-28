object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
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
    Left = 40
    Top = 24
    Width = 195
    Height = 25
    Caption = 'Cadastro de Livros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 92
    Height = 17
    Caption = 'Titulo do Livro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 134
    Width = 35
    Height = 17
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 39
    Top = 192
    Width = 44
    Height = 17
    Caption = 'G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 256
    Width = 43
    Height = 17
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 360
    Top = 134
    Width = 49
    Height = 17
    Caption = 'Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 360
    Top = 280
    Width = 100
    Height = 17
    Caption = 'Canais de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 91
    Width = 297
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 40
    Top = 149
    Width = 217
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 392
    Width = 153
    Height = 41
    Caption = 'Cadastrar'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 391
    Top = 392
    Width = 153
    Height = 41
    Caption = 'Pesquisar'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 216
    Top = 392
    Width = 153
    Height = 41
    Caption = 'Excluir'
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 215
    Width = 217
    Height = 23
    TabOrder = 5
    Items.Strings = (
      'Romance'
      'Autoajuda'
      'Autobiografia')
  end
  object RadioButton1: TRadioButton
    Left = 56
    Top = 288
    Width = 113
    Height = 17
    Caption = 'Portugu'#234's'
    TabOrder = 6
  end
  object RadioButton2: TRadioButton
    Left = 56
    Top = 315
    Width = 113
    Height = 17
    Caption = 'Ingl'#234's'
    TabOrder = 7
  end
  object RadioButton3: TRadioButton
    Left = 56
    Top = 342
    Width = 113
    Height = 17
    Caption = 'Espanhol'
    TabOrder = 8
  end
  object CheckBox1: TCheckBox
    Left = 360
    Top = 94
    Width = 145
    Height = 17
    Caption = 'Disponivel em Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Memo1: TMemo
    Left = 360
    Top = 157
    Width = 256
    Height = 100
    TabOrder = 10
  end
  object CheckBox2: TCheckBox
    Left = 370
    Top = 303
    Width = 97
    Height = 17
    Caption = 'Internet'
    TabOrder = 11
  end
  object CheckBox3: TCheckBox
    Left = 370
    Top = 326
    Width = 97
    Height = 17
    Caption = 'Telefone'
    TabOrder = 12
  end
  object CheckBox4: TCheckBox
    Left = 370
    Top = 349
    Width = 97
    Height = 17
    Caption = 'Loja Fisica'
    TabOrder = 13
  end
end
