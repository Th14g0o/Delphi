object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consulta ao Banco de Dados'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblConsulta: TLabel
    Left = 208
    Top = 16
    Width = 77
    Height = 15
    Caption = 'Digite o Nome'
  end
  object opcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 49
    Caption = 'Op'#231#245'es de consulta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = opcoesClick
  end
  object txtConsulta: TEdit
    Left = 208
    Top = 34
    Width = 401
    Height = 23
    TabOrder = 1
  end
  object btnConsulta: TButton
    Left = 8
    Top = 72
    Width = 601
    Height = 41
    Caption = 'Realizar Consulta'
    TabOrder = 2
    OnClick = btnConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 601
    Height = 305
    DataSource = DM.dsConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Caption = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Caption = 'IDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end>
  end
end
