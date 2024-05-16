unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Vcl.StdCtrls,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    FDQuerySel: TFDQuery;
    FDConnection1: TFDConnection;
    TabEdit: TEdit;
    FDQueryUp: TFDQuery;
    DataSource1: TDataSource;
    ColSetEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ColWheEdit: TEdit;
    Label3: TLabel;
    AtualizarBt: TButton;
    ConsultarBt: TButton;
    ValWheEdit: TEdit;
    Label4: TLabel;
    ValSetEdit: TEdit;
    Label5: TLabel;
    procedure ConsultarBtClick(Sender: TObject);
    procedure AtualizarBtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AtualizarBtClick(Sender: TObject);
begin
  with FDQueryUp do
  begin
    FDQueryUp.Close;
    FDQueryUp.Macros.MacroByName('Tabela').Value   := TabEdit.Text;
    FDQueryUp.Macros.MacroByName('UpColuna').Value := ColSetEdit.Text;
    ParamByName('UpValor').Value                   := ValSetEdit.Text;
    FDQueryUp.Macros.MacroByName('PkColuna').Value := ColWheEdit.Text;
    ParamByName('PkValor').Value                   := ValWheEdit.Text;
    ExecSQL;
  end;
  with FDQuerySel do
  begin
    FDQuerySel.Close;
    FDQuerySel.Macros.MacroByName('Tabela').Value := TabEdit.Text;
    FDQuerySel.Open;
  end;

end;

procedure TForm1.ConsultarBtClick(Sender: TObject);
begin
  with FDQuerySel do
  begin
    FDQuerySel.Close;
    FDQuerySel.Macros.MacroByName('Tabela').Value := TabEdit.Text;
    FDQuerySel.Open;
  end;

end;

end.
