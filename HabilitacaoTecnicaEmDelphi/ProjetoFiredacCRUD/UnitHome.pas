unit UnitHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormHome = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CampoNome: TEdit;
    CampoDt: TEdit;
    CampoCpf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Criar: TButton;
    Label5: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    AtualizarBt: TButton;
    VisualizarBt: TButton;
    procedure CriarClick(Sender: TObject);
    procedure AtualizarBtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VisualizarBtClick(Sender: TObject);
    procedure CampoDtChange(Sender: TObject);
  private
    DataValida : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;

implementation

{$R *.dfm}

uses ModuloCliente, UnitObjeto;

procedure TFormHome.AtualizarBtClick(Sender: TObject);
begin
  DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
  DataModule1.FDQuery1.Open;
end;

procedure TFormHome.CampoDtChange(Sender: TObject);
begin

  var dataConvertida : TDateTime;
  if TryStrToDate(CampoDt.Text, dataConvertida) then
  begin
    DataValida := True;
  end
  else
  begin
    DataValida := False;
  end;

end;

procedure TFormHome.CriarClick(Sender: TObject);
begin
  if (CampoNome.Text = '') or (CampoDt.Text = '') or (CampoCpf.Text = '')then
  begin
    ShowMessage('Preencha todos os campos');
  end
  else
  begin
    if DataValida then
      begin
      try
        DataModule1.FDQuery1.Sql.Text := 'insert into clientes(nome,cpf,dt_nasc) values(:nome,:cpf, :dt)';
        DataModule1.FDQuery1.ParamByName('nome').AsString := CampoNome.Text;
        DataModule1.FDQuery1.ParamByName('cpf').AsString := CampoCpf.Text;
        DataModule1.FDQuery1.ParamByName('dt').AsDate := StrToDate(CampoDt.Text);
        DataModule1.FDQuery1.ExecSql;
        ShowMessage('Cliente cadastrado com sucesso');
        CampoNome.Text := '';
        CampoDt.Text := '';
        CampoCpf.Text := '';

        DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
        DataModule1.FDQuery1.Open;
      except
        ShowMessage('Erro ao cadastrar usuario, tente novamente.');
      end;
    end
    else
    begin
      ShowMessage('Insira uma data em um formato valido');
    end;
  end;
end;



procedure TFormHome.FormShow(Sender: TObject);
begin
  DataModule1.FDQuery1.Open();
end;

procedure TFormHome.VisualizarBtClick(Sender: TObject);
begin
  if not DataModule1.FDQuery1.IsEmpty then
  begin
    FormObjeto.LabelCodigo.Caption := IntToStr(DataModule1.FDQuery1.FieldByName('codigo').AsInteger);
    FormObjeto.LabelNome.Caption := DataModule1.FDQuery1.FieldByName('nome').AsString;
    FormObjeto.LabelCpf.Caption := DataModule1.FDQuery1.FieldByName('cpf').AsString;
    FormObjeto.LabelDt.Caption := DataModule1.FDQuery1.FieldByName('dt_nasc').AsString;

    FormObjeto.CampoEditNome.Text := DataModule1.FDQuery1.FieldByName('nome').AsString;
    FormObjeto.CampoEditCpf.Text := DataModule1.FDQuery1.FieldByName('cpf').AsString;
    FormObjeto.CampoEditDt.Text := DataModule1.FDQuery1.FieldByName('dt_nasc').AsString;

    FormObjeto.ShowModal;

  end;
end;

end.
