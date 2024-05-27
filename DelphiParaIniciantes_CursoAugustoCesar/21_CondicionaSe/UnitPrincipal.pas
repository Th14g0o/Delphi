unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtUsuario: TEdit;
    txtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btLogin: TButton;
    procedure btLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btLoginClick(Sender: TObject);
begin
  //if com um so comando dispensa begin end
  //if txtUsuario.Text = 'admin' then
    //ShowMessage('Usuario correto');
  //if composto, necessita das duas verificações como verdadeira
  if (txtUsuario.Text = 'admin') and (txtSenha.Text = '123') then
  begin
    //if txtSenha.Text = '123' then
    //begin
      //ShowMessage('Logado com sucesso');
    //end;
    ShowMessage('Login execudado com sucesso');
  end//o ; fica aqui se o if 'não continuar'
  else
  begin
    ShowMessage('Dados de login incorretos');
  end;//end do if
  //if composto, ÑÂO necessita das duas verificações como verdadeira, epenas uma já é suficiente
  //if (txtUsuario.Text = 'admin') or (txtSenha.Text = '123') then
  //begin
    //ShowMessage('Login execudado com sucesso');
  //end
  //else
  //begin
    //ShowMessage('Dados de login incorretos');
  //end;
end;

end.
