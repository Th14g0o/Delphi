unit UnitConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TformConsMovimentacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    lblTotal: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConsMovimentacao: TformConsMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformConsMovimentacao.Button1Click(Sender: TObject);
begin
  DM.sqlMovimentacoes.Close;
  DM.sqlMovimentacoes.SQL.Clear;
  DM.sqlMovimentacoes.SQL.Text := 'SELECT * FROM movimentacoes WHERE DATE(dataHora) BETWEEN :pDataInicial and :pDataFinal';
  DM.sqlMovimentacoes.ParamByName('pDataInicial').Value := FormatDateTime('YYYY-MM-DD', StrToDate(txtDataInicial.Text));
  DM.sqlMovimentacoes.ParamByName('pDataFinal').Value   := FormatDateTime('YYYY-MM-DD', StrToDate(txtDataFinal.Text));
  DM.sqlMovimentacoes.Open;

  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

procedure TformConsMovimentacao.FormShow(Sender: TObject);
begin
   DM.sqlMovimentacoes.Refresh;
   DM.sqlMovProdutos.Refresh;

   lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

end.
