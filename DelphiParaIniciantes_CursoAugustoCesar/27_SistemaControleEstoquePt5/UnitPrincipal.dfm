object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Controle de Estoque'
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
    Left = 584
    Top = 400
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        ShortCut = 27
        OnClick = Sair1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produtos1: TMenuItem
        Caption = 'Cadastro de Produtos'
        OnClick = Produtos1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object GerenciarMovimentaes1: TMenuItem
        Caption = 'Gerenciar Movimenta'#231#245'es'
        OnClick = GerenciarMovimentaes1Click
      end
      object ConsultarMovimentaes1: TMenuItem
        Caption = 'Consultar Movimenta'#231#245'es'
        OnClick = ConsultarMovimentaes1Click
      end
    end
  end
end
