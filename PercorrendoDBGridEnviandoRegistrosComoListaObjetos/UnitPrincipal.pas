unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, UnitClassJogo;

type
  TFormPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BtnEnviar: TButton;
    EditPesquisa: TEdit;
    procedure EditPesquisaChange(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FJogos: TJogo;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitDM, UnitSecundario;

procedure TFormPrincipal.BtnEnviarClick(Sender: TObject);
var
  I    : Integer;
  Jogo : TJogo;
  Titulo, Desc: string;
  Valor:Real;
begin

  FJogos := TJogo.Create('Jogo Principal', 'Descrição do Jogo Principal', 50.0);

  if DBGrid1.DataSource.DataSet.Active then
  begin
    DBGrid1.DataSource.DataSet.First;
    while not DBGrid1.DataSource.DataSet.Eof do
    begin
      Titulo := '';
      Desc   := '';
      Valor  := 0;
      if DBGrid1.DataSource.DataSet.FieldByName('Titulo').Value <> Null then
        Titulo := DBGrid1.DataSource.DataSet.FieldByName('Titulo').Value;
      if DBGrid1.DataSource.DataSet.FieldByName('Desc').Value <> Null then
        Desc   := DBGrid1.DataSource.DataSet.FieldByName('Desc').Value;
      if DBGrid1.DataSource.DataSet.FieldByName('Valor').Value <> Null then
        Valor  := DBGrid1.DataSource.DataSet.FieldByName('Valor').Value;

      Jogo := TJogo.Create(Titulo, Desc, Valor);
      if Jogo <> nil then FJogos.AddJogo(Jogo);

      DBGrid1.DataSource.DataSet.Next;
    end;
  end;

  FormSecundario.Titulo := FJogos.GetTitulo;
  FormSecundario.Jogos  := FJogos;
  FormSecundario.ShowModal
end;

procedure TFormPrincipal.EditPesquisaChange(Sender: TObject);
begin
  if EditPesquisa.Text <> '' then
  begin
    DM.QJogo.Filter := 'Valor >= ' + EditPesquisa.Text;
    DM.QJogo.Filtered := true;
  end
  else
  begin
    DM.QJogo.Filter := '';
    DM.QJogo.Filtered := false;
  end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  DM.QJogo.Close;
  DM.QJogo.Open;
end;

end.
