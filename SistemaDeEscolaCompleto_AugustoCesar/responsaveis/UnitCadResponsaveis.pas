unit UnitCadResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCadResponsaveis = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    txtNome: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label8: TLabel;
    txtLocalizar: TEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtLocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResponsaveis: TfrmCadResponsaveis;

implementation

{$R *.dfm}

uses UnitDM;

procedure TfrmCadResponsaveis.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
  begin
    DM.tbResponsaveisparentesco.Value := 'Pai';//ao adicionar deixar marcado no radiou group a opt Pai
    txtNome.SetFocus;
  end;
end;

procedure TfrmCadResponsaveis.FormCreate(Sender: TObject);
begin
  //navigator começa todo desativo, sem motivo aparente.
  if not DM.tbResponsaveis.IsEmpty then DM.tbResponsaveis.First
  else DM.tbResponsaveis.Insert;
end;

procedure TfrmCadResponsaveis.txtLocalizarChange(Sender: TObject);
begin
  DM.tbResponsaveis.Locate('nome', txtLocalizar.Text, [loPartialKey])
end;

end.
