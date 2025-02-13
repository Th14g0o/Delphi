unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    comboUsuario: TComboBox;
    Button1: TButton;
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
  //pode ser usado com integer, char ou tipos enumerados
  CASE comboUsuario.ItemIndex of
    0:
    begin
     ShowMessage('Logado como Investidor');
     ShowMessage('Teste segundo comando');
    end;
    1: ShowMessage('Logado como Diretor');
    2: ShowMessage('Logado como Supervisor');
    3: ShowMessage('Logado como Gerente');
    4: ShowMessage('Logado como Vendedor');
  END;
end;

end.
