unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtNome: TEdit;
    lblResultado: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    txtIdade: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //if simples
  //if txtNome.Text = '' then
  //begin
  //  ShowMessage('Digite seu nome');
  //end;
  //se e senao
  //if txtNome.Text = '' then
  //begin
  //  ShowMessage('Digite seu nome');
  //end
  //else
  //begin
  //  ShowMessage('Você digitou seu nome');
  //end;

  //verificando mais de um edit e verificação dde mais de um edit ao mesmo tempo
  if txtNome.Text = '' then
  begin
    ShowMessage('Digite seu nome');
  end;
  if txtIdade.Text = '' then
  begin
    ShowMessage('Digite sua idade');
  end;
  if (txtNome.Text <> '') and (txtIdade.Text <> '') then
  begin
    ShowMessage('Cadastro preenchido com sucesso');
  end;
end;

end.
