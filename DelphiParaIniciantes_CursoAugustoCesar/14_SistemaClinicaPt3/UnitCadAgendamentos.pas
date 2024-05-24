unit UnitCadAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBEditIDAgendamento: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    LookupComboBoxFkPaciente: TDBLookupComboBox;
    DBEditDataAgendamento: TDBEdit;
    Label3: TLabel;
    DBEditHoraAgendamento: TDBEdit;
    Label5: TLabel;
    DBComboBoxEspecialidadeAgendameto: TDBComboBox;
    Label6: TLabel;
    DBEditNomeMedicoAgendamento: TDBEdit;
    Label7: TLabel;
    GridPacientes: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadAgendamentos: TFormCadAgendamentos;

implementation

{$R *.dfm}

uses UnitDM;

end.
