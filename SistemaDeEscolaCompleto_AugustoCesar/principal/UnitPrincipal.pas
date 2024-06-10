unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Responsveis1: TMenuItem;
    procedure Responsveis1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UnitCadResponsaveis;

procedure TfrmPrincipal.Responsveis1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCadResponsaveis, frmCadResponsaveis);  //para criar a unit na memoria
    frmCadResponsaveis.ShowModal; //para mostrar
end;

end.
