object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 552
    Top = 368
    object Menu11: TMenuItem
      Caption = 'Menu 1'
      object Item11: TMenuItem
        Caption = 'Item 1'
      end
      object Item12: TMenuItem
        Caption = 'Item 2'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Sair'
        ShortCut = 120
        OnClick = N2Click
      end
    end
    object Menu21: TMenuItem
      Caption = 'Menu 2'
      object Menu22: TMenuItem
        Caption = 'Item 1'
      end
      object Item21: TMenuItem
        Caption = 'Item 2'
        object SubItem11: TMenuItem
          Caption = 'SubItem 1'
        end
        object SubItem12: TMenuItem
          Caption = 'SubItem 2'
        end
      end
    end
    object Menu31: TMenuItem
      Caption = 'Menu 3'
      object Item13: TMenuItem
        Caption = 'Item 1'
      end
      object Item14: TMenuItem
        Caption = '-'
      end
      object Item22: TMenuItem
        Caption = 'Item 2'
      end
    end
  end
end
