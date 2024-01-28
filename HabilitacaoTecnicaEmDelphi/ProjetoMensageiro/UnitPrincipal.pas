unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;


type
  TTelaUm = class(TForm)
    CaixaMsg: TEdit;
    Label1: TLabel;
    EnviarBt: TButton;
    ConfirmaLabelBg: TPanel;
    ConfimaLabel: TLabel;
    procedure EnviarBtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaUm: TTelaUm;

implementation

{$R *.dfm}

uses UnitSecundaria;

procedure TTelaUm.EnviarBtClick(Sender: TObject);
begin
  TelaDois.MsgAtualLabel.Caption := CaixaMsg.Text;
  if Trim(CaixaMsg.Text) = ''  then  TelaDois.MsgAtualLabel.Visible := False;
  TelaDois.Show;
  Hide;



end;

end.
