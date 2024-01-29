unit UnitObjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormObjeto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelCodigo: TLabel;
    LabelNome: TLabel;
    LabelCpf: TLabel;
    LabelDt: TLabel;
    ExcluirBt: TButton;
    TabSheet2: TTabSheet;
    CampoEditNome: TEdit;
    CampoEditDt: TEdit;
    CampoEditCpf: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AtualizarBt: TButton;
    procedure ExcluirBtClick(Sender: TObject);
    procedure AtualizarBtClick(Sender: TObject);
    procedure CampoEditDtChange(Sender: TObject);
  private
    DataValida : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObjeto: TFormObjeto;

implementation

{$R *.dfm}

uses ModuloCliente, UnitModalConfirma;

procedure TFormObjeto.AtualizarBtClick(Sender: TObject);
begin
  if (CampoEditNome.Text = '') or (CampoEditCpf.Text = '') or (CampoEditDt.Text = '') then
  begin
    ShowMessage('Preencha todos os campos primeiro');
  end
  else
  begin
    if DataValida then
     begin
      try
        DataModule1.FDQuery1.SQL.Text := 'update clientes set nome = :n, dt_nasc = :dt, cpf = :cpf where codigo = :c';
        DataModule1.FDQuery1.ParamByName('n').AsString := CampoEditNome.Text;
        DataModule1.FDQuery1.ParamByName('cpf').AsString := CampoEditCpf.Text;
        DataModule1.FDQuery1.ParamByName('dt').AsDate := StrToDate(CampoEditDt.Text);
        DataModule1.FDQuery1.ParamByName('c').AsInteger := StrToInt(LabelCodigo.Caption);
        DataModule1.FDQuery1.ExecSQL;
        DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
        DataModule1.FDQuery1.Open;
        LabelNome.Caption := CampoEditNome.Text;
        LabelDt.Caption := CampoEditDt.Text;
        LabelCpf.Caption := CampoEditCpf.Text;
        ShowMessage('Registro atualizado com sucesso');
      except
        DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
        DataModule1.FDQuery1.Open;
        ShowMessage('Registro não foi atualizado com sucesso');
      end;
     end
     else
     begin
       ShowMessage('Insira uma data em um formato valido')
     end;
  end;

end;

procedure TFormObjeto.CampoEditDtChange(Sender: TObject);
begin
  var dataConvertida : TDateTime;
  if TryStrToDate(CampoEditDt.Text, dataConvertida) then
  begin
    DataValida := True;
  end
  else
  begin
    DataValida := False;
  end;
end;

procedure TFormObjeto.ExcluirBtClick(Sender: TObject);
begin
  DataModule1.FDQuery1.SQL.Text := 'delete from clientes where codigo = :cod';
  DataModule1.FDQuery1.ParamByName('cod').AsInteger := StrToInt(LabelCodigo.Caption);
  FormConfirma.ShowModal;
end;

end.
