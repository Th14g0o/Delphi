object FormConfirma: TFormConfirma
  Left = 0
  Top = 0
  Caption = 'Confirma'#231#227'o'
  ClientHeight = 169
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 307
    Height = 56
    Alignment = taCenter
    Caption = 'Tem certeza que deseja apagar'#13' esse registro?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ConfirmarBt: TButton
    Left = 24
    Top = 112
    Width = 137
    Height = 41
    Caption = 'Sim, desejo excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ConfirmarBtClick
  end
  object CancelarBt: TButton
    Left = 184
    Top = 112
    Width = 147
    Height = 41
    Caption = 'N'#227'o, desejo manter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = CancelarBtClick
  end
end
