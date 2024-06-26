unit UnitSecundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UnitClassJogo, UnitFrame, System.Generics.Collections;

type
  TFormSecundario = class(TForm)
    Panel1: TPanel;
    AreaJogos: TGroupBox;
    LabelTitulo: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FramesJogos: array of TFrameJogo;
    procedure ExibirJogos;
  public
    { Public declarations }
    Titulo : string;
    Jogos: TJogo; // Declaração da lista de jogos
  end;

var
  FormSecundario: TFormSecundario;

implementation

{$R *.dfm}


procedure TFormSecundario.FormShow(Sender: TObject);
begin
  LabelTitulo.Caption := Titulo;
  ExibirJogos;
end;

procedure TFormSecundario.ExibirJogos;
var
  i: Integer;
  NovoFrame: TFrameJogo;
  JogosLista : TList<TJogo>;
begin
   // Limpar frames antigos, se houver
  for i := 0 to Length(FramesJogos) - 1 do
  begin
    FramesJogos[i].Free;
  end;

  JogosLista := Jogos.GetJogos;
  SetLength(FramesJogos, JogosLista.Count);

  // Criar e posicionar os frames
  for i := 0 to JogosLista.Count - 1 do
  begin
    NovoFrame := TFrameJogo.Create(Self);
    NovoFrame.Name := 'FrameJogo' + IntToStr(i);
    NovoFrame.Parent := AreaJogos; // Adicionar ao painel AreaJogos
    NovoFrame.Align := AlTop;
    NovoFrame.Top := i * (NovoFrame.Height + 20); // Ajustar posição vertical
    //NovoFrame.Left := 10; // Ajustar posição horizontal
    NovoFrame.SetTextos(JogosLista[i].GetTitulo,JogosLista[i].GetValor, JogosLista[i].GetDesc);

    FramesJogos[i] := NovoFrame;
  end;
end;

end.
