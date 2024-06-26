unit UnitFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameJogo = class(TFrame)
    Titulo: TLabel;
    Valor: TLabel;
    Painel: TPanel;
    Desc: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetTextos(aTitulo:string; aValor:string; aDesc:string);
  end;

implementation

{$R *.dfm}

procedure TFrameJogo.SetTextos(aTitulo:string; aValor:string; aDesc:string);
begin
  Titulo.Caption := aTitulo;
  Valor.Caption  := aValor;
  Desc.Caption   := aDesc;
end;



end.
