unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    EditFone1: TDBEdit;
    EditFone2: TDBEdit;
    DBNavigator1: TDBNavigator;
    lblCursor: TLabel;
    lblMascara: TLabel;
    lblText: TLabel;
    lblTamanho: TLabel;
    lblTamanho2: TLabel;
    lblText2: TLabel;
    procedure MudarMascaraFone(EditTelefone: TDBEdit; NovoNumero: string = '');
    procedure EditFone1Enter(Sender: TObject);
    procedure EditFone1KeyPress(Sender: TObject; var Key: Char);
    procedure EditFone2KeyPress(Sender: TObject; var Key: Char);
    procedure EditFone2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormPrincipal.EditFone1Enter(Sender: TObject);
begin
  MudarMascaraFone(EditFone1);
end;

procedure TFormPrincipal.EditFone1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (DM.Clientes.State in [dsInsert, dsEdit]) then DM.Clientes.Edit;
  MudarMascaraFone(EditFone1, Key);
  Key := #0;
end;

procedure TFormPrincipal.EditFone2Enter(Sender: TObject);
begin
  MudarMascaraFone(EditFone2);
end;

procedure TFormPrincipal.EditFone2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (DM.Clientes.State in [dsInsert, dsEdit]) then DM.Clientes.Edit;
  MudarMascaraFone(EditFone2, Key);
  Key := #0;
end;

procedure TFormPrincipal.MudarMascaraFone(EditTelefone: TDBEdit; NovoNumero: string);
var
  aNovaMascara: string;
  aTexto: string;
  aPosicao: Integer;
begin
  aTexto := EditTelefone.Text;
  aPosicao := EditTelefone.SelStart;


  lblCursor.Caption := IntToStr(aPosicao);
  lblTamanho.Caption := IntToStr(Length(aTexto));
  lblText.Caption := aTexto;

  if (NovoNumero <> #8) and (NovoNumero <> '') then
  begin
    if aPosicao <= Length(aTexto) + 3 then
    begin
      if aPosicao < 3 then
      begin
        Delete(aTexto, aPosicao, 1);
        Insert(NovoNumero, aTexto, aPosicao);
      end
      else if (aPosicao > 2) and (aPosicao < 9) then
      begin
        Delete(aTexto, aPosicao - 1, 1);
        Insert(NovoNumero, aTexto, aPosicao - 1);
      end
      else if aPosicao > 8 then
      begin
        Delete(aTexto, aPosicao - 2, 1);
        Insert(NovoNumero, aTexto, aPosicao - 2);
      end;
    end
    else
    begin
       Insert(NovoNumero, aTexto, aPosicao + 1);
    end;
    Inc(aPosicao);
  end;

  lblTamanho2.Caption := IntToStr(Length(aTexto));
  lblText2.Caption := aTexto;

  if Length(aTexto) > 11 then
    Exit;

  if Length(aTexto) <= 10 then aNovaMascara := '(99)9999-9999;0;_'
  else aNovaMascara := '(99)99999-9999;0;_';

  if EditTelefone.Field.EditMask <> aNovaMascara then EditTelefone.Field.EditMask := aNovaMascara;

  EditTelefone.Text := aTexto;
  EditTelefone.SelStart := aPosicao;
end;


end.
