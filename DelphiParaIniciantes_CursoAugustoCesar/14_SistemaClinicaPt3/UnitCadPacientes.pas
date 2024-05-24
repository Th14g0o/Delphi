unit UnitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEditIDPaciente: TDBEdit;
    DBEditCPFPaciente: TDBEdit;
    DBEditNomePaciente: TDBEdit;
    DBEditCelularPaciente: TDBEdit;
    DBEditDataPaciente: TDBEdit;
    Label2: TLabel;
    GridPacientes: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    TxtBusca: TEdit;
    Label7: TLabel;
    procedure TxtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPacientes: TFormCadPacientes;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormCadPacientes.TxtBuscaChange(Sender: TObject);
begin
  DM.TbPaciente.Locate('nome', TxtBusca.Text, [loPartialKey]);
end;

end.
