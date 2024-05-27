unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    opcoes: TRadioGroup;
    lblConsulta: TLabel;
    txtConsulta: TEdit;
    btnConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitDM;

procedure TForm1.btnConsultaClick(Sender: TObject);
begin
  DM.sqlConsulta.Close;//fecha comando sql atual
  DM.sqlConsulta.SQL.Clear;//limpa comando sql atual
  //DM.sqlConsulta.SQL.Add();//adiciona comando sql novo

  if (opcoes.ItemIndex = 0) then
  begin
    DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
    DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
  end;
  if (opcoes.ItemIndex = 1) then
  begin
   DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
   DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
  end;
  //o que tiver no texto do txtConsulta, passe para o parametro pConsulta como string

  DM.sqlConsulta.Open;//abre comando sql novo
end;

procedure TForm1.opcoesClick(Sender: TObject);
begin
  if (opcoes.ItemIndex = 0) then
  begin
    lblConsulta.Caption := 'Digite o Nome';
  end;

  if (opcoes.ItemIndex = 1) then
  begin
    lblConsulta.Caption := 'Digite o Bairro';
  end;
end;

end.
