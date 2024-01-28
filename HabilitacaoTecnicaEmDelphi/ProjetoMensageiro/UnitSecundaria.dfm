object TelaDois: TTelaDois
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Confirma'#231#227'o da mensgem'
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
  object MsgAtualLabel: TLabel
    Left = 32
    Top = 24
    Width = 305
    Height = 49
  end
  object ConfirmarBt: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 0
    OnClick = ConfirmarBtClick
  end
  object CancelarBt: TButton
    Left = 129
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = CancelarBtClick
  end
end
