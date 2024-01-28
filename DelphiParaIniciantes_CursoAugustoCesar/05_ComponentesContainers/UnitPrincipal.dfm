object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 641
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 32
    Width = 553
    Height = 153
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 16
      Top = 56
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 10
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 33
      Width = 97
      Height = 17
      Caption = 'CheckBox3'
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 424
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 376
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 4
    end
    object RadioButton2: TRadioButton
      Left = 272
      Top = 88
      Width = 113
      Height = 17
      Caption = 'RadioButton2'
      TabOrder = 5
    end
  end
  object RadioButton1: TRadioButton
    Left = 232
    Top = 288
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 1
  end
  object CheckBox4: TCheckBox
    Left = 232
    Top = 224
    Width = 97
    Height = 17
    Caption = 'CheckBox4'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 312
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 256
    Width = 185
    Height = 105
    Caption = 'Titulo'
    TabOrder = 4
    object RadioButton3: TRadioButton
      Left = 48
      Top = 64
      Width = 113
      Height = 17
      Caption = 'RadioButton3'
      TabOrder = 0
    end
    object RadioButton4: TRadioButton
      Left = 56
      Top = 40
      Width = 113
      Height = 17
      Caption = 'RadioButton4'
      TabOrder = 1
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 359
    Top = 208
    Width = 257
    Height = 105
    Caption = 'RadioGroup1'
    Columns = 2
    Items.Strings = (
      'Masculino'
      'Feminino'
      'a'
      'b'
      'cx'
      'e23'
      'ef')
    TabOrder = 5
  end
  object PageControl1: TPageControl
    Left = 40
    Top = 375
    Width = 576
    Height = 250
    ActivePage = TabSheet3
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'infos'
      object Label1: TLabel
        Left = 168
        Top = 64
        Width = 34
        Height = 15
        Caption = 'Label1'
      end
      object Memo1: TMemo
        Left = 184
        Top = 104
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Label2: TLabel
        Left = 176
        Top = 64
        Width = 34
        Height = 15
        Caption = 'Label2'
      end
      object Edit2: TEdit
        Left = 176
        Top = 96
        Width = 121
        Height = 23
        TabOrder = 0
        Text = 'Edit2'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label3: TLabel
        Left = 168
        Top = 16
        Width = 34
        Height = 15
        Caption = 'Label3'
      end
      object Memo2: TMemo
        Left = 184
        Top = 40
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo2')
        TabOrder = 0
      end
      object CheckBox5: TCheckBox
        Left = 176
        Top = 144
        Width = 97
        Height = 17
        Caption = 'CheckBox5'
        TabOrder = 1
      end
    end
  end
end
