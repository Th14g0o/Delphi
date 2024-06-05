unit UnitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadMovimentacao = class(TForm)
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtTotalProdutos: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadMovimentacao: TformCadMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  //é com Button que identificamos o botão do navigator clicado
  if Button = nbInsert then
  begin
    DM.tbMovimentacoes.FieldByName('dataHora').Value := Now;
  end;
end;

procedure TformCadMovimentacao.FormShow(Sender: TObject);
begin
  DM.calcularTotais; //assim que mostrar esse form, calcular total
end;

end.
