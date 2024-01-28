object TelaUm: TTelaUm
  Left = 0
  Top = 0
  Caption = 'Mensagem'
  ClientHeight = 149
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 213
    Height = 15
    Caption = 'Escreva sua mensagem na caixa abaixo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object CaixaMsg: TEdit
    Left = 32
    Top = 45
    Width = 305
    Height = 23
    TabOrder = 0
  end
  object EnviarBt: TButton
    Left = 32
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = EnviarBtClick
  end
  object ConfirmaLabelBg: TPanel
    AlignWithMargins = True
    Left = 32
    Top = 74
    Width = 305
    Height = 31
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBrown
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object ConfimaLabel: TLabel
      Left = 8
      Top = 8
      Width = 123
      Height = 15
      Caption = 'Mensagem confirmada'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
  end
end
