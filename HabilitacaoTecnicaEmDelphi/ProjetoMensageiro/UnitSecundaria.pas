unit UnitSecundaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;



type
  TTelaDois = class(TForm)
    MsgAtualLabel: TLabel;
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
  TelaDois: TTelaDois;

implementation

{$R *.dfm}

uses
  UnitPrincipal;

procedure TTelaDois.CancelarBtClick(Sender: TObject);
begin
  TelaUm.Show;
  if MsgAtualLabel.Visible = True then
  begin
    TelaUm.ConfimaLabel.Caption := 'Mensagem cancelada';
    TelaUm.ConfimaLabel.Font.Color := clRed;
    TelaUm.ConfimaLabel.Visible := True;
    TelaUm.ConfirmaLabelBg.Color := clMaroon;
    TelaUm.ConfirmaLabelBg.Visible := True;
  end

  else
  begin
    TelaUm.ConfimaLabel.Visible := False;
    TelaUm.ConfirmaLabelBg.Visible := False;
  end;
  Close;
end;

procedure TTelaDois.ConfirmarBtClick(Sender: TObject);
begin
  if MsgAtualLabel.Visible = True then
  begin
    TelaUm.Show;

    TelaUm.ConfimaLabel.Caption := 'Mensagem confirmada';
    TelaUm.ConfimaLabel.Font.Color := clLime;
    TelaUm.ConfimaLabel.Visible := True;
    TelaUm.ConfirmaLabelBg.Color := clGreen;
    TelaUm.ConfirmaLabelBg.Visible := True;

    Close;
  end;


end;

end.
