unit UnitAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadAlunos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    txtNome: TDBEdit;
    txtLocalizar: TEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    Label14: TLabel;
    btRelatorio: TButton;
    procedure txtLocalizarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAlunos: TfrmCadAlunos;

implementation

{$R *.dfm}

uses UnitDM, UnitRelAlunos;

procedure TfrmCadAlunos.btRelatorioClick(Sender: TObject);
begin
  frmRelAlunos.relAlunos.Preview();
end;

procedure TfrmCadAlunos.FormShow(Sender: TObject);
begin
  //navigator começa todo desativo, sem motivo aparente.
  DM.tbAlunos.Close;
  DM.tbAlunos.Open;
end;

procedure TfrmCadAlunos.txtLocalizarChange(Sender: TObject);
begin
  DM.tbAlunos.Locate('nome', txtLocalizar.Text, [loPartialKey])
end;

end.
