unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente sair do sitema?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = mrYes then
  begin
    Application.Terminate;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //modal padrão, n abre espaço para customização de titulos ou botões
  ShowMessage('Teste de Mensagem');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //msg, titulo, iconePadraoDelphi+bt
  Application.MessageBox('Teste de Mensagem', 'Atenção', MB_ICONEXCLAMATION+MB_OK)
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //digitando MB_ e usando ctrl + barra de espaço mostra as constantes com mais
  //facilidade, MB_ICON ditado e usando a tecla de atalho facilita achar os icones existente
  Application.MessageBox('Teste de Mensagem', 'Informação', MB_ICONINFORMATION+MB_OK)
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Mensagem', 'Informação', MB_ICONERROR+MB_OK)
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Mensagem', 'Informação', MB_ICONQUESTION+MB_OK)
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Application.MessageBox('Teste de mensagem', 'Titulo', MB_ICONQUESTION+MB_YESNO)
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Application.MessageBox('Teste de mensagem', 'Titulo', MB_ICONQUESTION+MB_OKCANCEL)

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  //esses botões são constantes no delphi para ele montar a caixa
  //mr são as constantes de resposta de uma caixa de mensagem
  //Application.MessageBox retorna um inteiro como resultado
  if Application.MessageBox('Teste de mensagem', 'Titulo', MB_ICONQUESTION+MB_YESNO) = mrNo then
  begin
    ShowMessage('Você escolheu não');

  end
  else
  begin
    ShowMessage('Você escolheu sim');
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  var caixa : Integer := Application.MessageBox('Teste de mensagem', 'Titulo', MB_ICONQUESTION+MB_YESNOCANCEL);
  if caixa = mrYes then
  begin
    ShowMessage('Você escolheu sim');
  end
  else if caixa = mrNo then
  begin
    ShowMessage('Você escolheu não');
  end
  else
  begin
      ShowMessage('Você escolheu cancelar');
  end;
end;

end.
