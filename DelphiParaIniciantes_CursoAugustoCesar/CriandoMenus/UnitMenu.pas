unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Menu11: TMenuItem;
    Menu21: TMenuItem;
    Menu22: TMenuItem;
    Item21: TMenuItem;
    Item11: TMenuItem;
    Item12: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    SubItem11: TMenuItem;
    SubItem12: TMenuItem;
    Menu31: TMenuItem;
    Item13: TMenuItem;
    Item14: TMenuItem;
    Item22: TMenuItem;
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.N2Click(Sender: TObject);
begin
  ShowMessage('Botão Sair foi clicado');
end;

end.
