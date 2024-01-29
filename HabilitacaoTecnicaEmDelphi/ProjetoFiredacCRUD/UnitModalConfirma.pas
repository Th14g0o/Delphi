unit UnitModalConfirma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormConfirma = class(TForm)
    Label1: TLabel;
    ConfirmarBt: TButton;
    CancelarBt: TButton;
    procedure CancelarBtClick(Sender: TObject);
    procedure ConfirmarBtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfirma: TFormConfirma;

implementation

{$R *.dfm}

uses ModuloCLiente, UnitObjeto;

procedure TFormConfirma.CancelarBtClick(Sender: TObject);
begin
  DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
  DataModule1.FDQuery1.Open;
  Close;
end;

procedure TFormConfirma.ConfirmarBtClick(Sender: TObject);
begin
  try
    DataModule1.FDQuery1.ExecSQL;
    DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
    DataMOdule1.FDQuery1.Open;
    ShowMessage('Registro apagado com sucesso');
    Close;
    FormObjeto.Close;
  except
    DataModule1.FDQuery1.SQL.Text := 'select * from clientes';
    DataModule1.FDQuery1.Open;
    ShowMessage('Registro não foi apagado com sucesso');
    Close;
  end;

end;
end.
