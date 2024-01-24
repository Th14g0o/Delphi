unit UnitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    SomaBt: TButton;
    MultiplicarBt: TButton;
    SubtrairBt: TButton;
    DividitBt: TButton;
    Num1: TEdit;
    Num2: TEdit;
    procedure Calc(Sender: TObject);
    procedure DigitarNum(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Calc(Sender: TObject);
begin
  var n1 : Double;
  var n2 : Double;
  var resultado : Double;
  var resultadoFormatando : String;
  var btClicado : TButton;

  n1 := StrToFloat(Num1.Text);
  n2 := StrToFloat(Num2.Text);

  btClicado := TButton(Sender);
  if btClicado.Caption = '+' then  resultado := n1+n2;
  if btClicado.Caption = '-' then  resultado := n1-n2;
  if btClicado.Caption = '*' then  resultado := n1*n2;
  if btClicado.Caption = '/' then  resultado := n1/+n2;
  ShowMessage(FloatToStr(resultado));
end;


procedure TForm1.DigitarNum(Sender: TObject);
begin
  var x : Double;

  if Pos('.', Num1.Text) > 0 then
  begin
    Num1.Text := Copy(Num1.Text, 1, Pos('.', Num1.Text) - 1) + ',' + Copy(Num1.Text, Pos('.', Num1.Text) + Length(','), MaxInt);
    Num1.SelStart := Length(Num1.Text);
  end;

  if Pos('.', Num2.Text) > 0 then
  begin
    Num2.Text := Copy(Num2.Text, 1, Pos('.', Num2.Text) - 1) + ',' + Copy(Num2.Text, Pos('.', Num2.Text) + Length(','), MaxInt);
    Num2.SelStart := Length(Num2.Text);
  end;

  if TryStrToFloat(Num1.Text, x) = False then
  begin
    Num1.Text := Copy(Num1.Text, 1, Length(Num1.Text) - 1);
    Num1.SelStart := Length(Num1.Text);
  end;

  if TryStrToFloat(Num2.Text, x) = False then
  begin
    Num2.Text := Copy(Num2.Text, 1, Length(Num2.Text) - 1);
    Num2.SelStart := Length(Num2.Text);
  end;


end;

end.
