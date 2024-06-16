object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Gest'#227'o Escolar - Escola Modelo'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Responsveis1: TMenuItem
        Caption = 'Respons'#225'veis'
        OnClick = Responsveis1Click
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
    end
  end
end
