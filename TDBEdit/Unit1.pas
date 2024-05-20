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
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitDM;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule3.FDQueryUp.Close;
  DataModule3.FDQueryUp.ParamByName('nome').AsString := DBEdit1.Field.AsString;
  DataModule3.FDQueryUp.ParamByName('cod').AsInteger := DataModule3.FDQuery1.FieldByName('codigo').AsInteger;
  DataModule3.FDQueryUp.ExecSQL;
   DataModule3.FDQueryUp.Close;
end;

procedure TForm1.DBEdit1Change(Sender: TObject);
var
  texto : string;
begin
  Button1.Caption := DBEdit1.Text;
  texto         := DBEdit1.Text;
  if  Length(DBEdit1.Text) > 10 then
  begin
    DBEdit1.Field.EditMask := '99 9 9999-9999;0;_';

    DBEdit1.Text := texto;
  end;
  if  Length(DBEdit1.Text) = 10 then begin
    DBEdit1.Field.EditMask := '99 9999-9999;0;_';

    DBEdit1.Text := texto;
  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DataModule3.FDQuery1.Close;
  DataModule3.FDQuery1.Open;
end;

end.
