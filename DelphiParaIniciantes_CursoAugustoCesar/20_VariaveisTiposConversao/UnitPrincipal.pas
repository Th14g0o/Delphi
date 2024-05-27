unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtNumero1: TEdit;
    txtNumero2: TEdit;
    txtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    btSomar: TButton;
    procedure btSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btSomarClick(Sender: TObject);
var //area de variaveis da procedure
  //tipos comuns:
  //numero1: Integer;//numeros inteiros
  //numero2: Real;//numeros com virgula
  numero1, numero2, resultado: Real;//declarando variaveis em uma linha
  //so para mostrar
  nome: String;//variavel texto
  maiorIdade: Boolean;//variavel logica
begin
  numero1           := StrToFloat(txtNumero1.Text); //string para real
  numero2           := StrToFloat(txtNumero2.Text);
  resultado         := numero1 + numero2;
  txtResultado.Text := FloatToStr(resultado);
end;

end.
