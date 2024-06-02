unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    btAbrir: TButton;
    btFechar: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    DBNavigator1: TDBNavigator;
    btDeletar: TButton;
    btInserir: TButton;
    btAnterior: TButton;
    btUltimo: TButton;
    btProximo: TButton;
    btPrimeiro: TButton;
    Conexao: TFDConnection;
    tbUsuarios: TFDTable;
    dsUsuarios: TDataSource;
    procedure btAbrirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure tbUsuariosBeforeScroll(DataSet: TDataSet);
    procedure tbUsuariosAfterScroll(DataSet: TDataSet);
    procedure btInserirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btAbrirClick(Sender: TObject);
begin
  tbUsuarios.Open; //carrega tabela

  btInserir.Enabled  := True;
  btDeletar.Enabled  := True;
  btSalvar.Enabled   := False;
  btCancelar.Enabled := False;

  //aqui não precisa controlar enabled da movimentação pq o evento after scroll ja resolve isso
end;

procedure TForm1.btAnteriorClick(Sender: TObject);
begin
  tbUsuarios.Prior; //registro anterior ao apontado pelo ponteiro
end;

procedure TForm1.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled  := True;
  btDeletar.Enabled  := True;
  btSalvar.Enabled   := False;
  btCancelar.Enabled := False;

  tbUsuarios.Cancel; //Cancela operação atual
end;

procedure TForm1.btDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente deletar o registro?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
    tbUsuarios.Delete;
end;

procedure TForm1.btFecharClick(Sender: TObject);
begin
  tbUsuarios.Close; //fecha tabela

  btInserir.Enabled  := False;
  btDeletar.Enabled  := False;
  btSalvar.Enabled   := False;
  btCancelar.Enabled := False;

  btProximo.Enabled  := False;
  btUltimo.Enabled   := False;
  btAnterior.Enabled := False;
  btPrimeiro.Enabled := False;
end;

procedure TForm1.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled  := False;
  btDeletar.Enabled  := False;
  btSalvar.Enabled   := True;
  btCancelar.Enabled := True;

  tbUsuarios.Append; //faz com que a tebela usuario entre em modo de inserção.
end;

procedure TForm1.btPrimeiroClick(Sender: TObject);
begin
  tbUsuarios.First;//vai pro primeiro registro da tabela
end;

procedure TForm1.btProximoClick(Sender: TObject);
begin
  tbUsuarios.Next; //vai proximo registro da tabela
end;

procedure TForm1.btSalvarClick(Sender: TObject);
begin
  btInserir.Enabled  := True;
  btDeletar.Enabled  := True;
  btSalvar.Enabled   := False;
  btCancelar.Enabled := False;

  tbUsuarios.Post; //Salva alteração atual
end;

procedure TForm1.btUltimoClick(Sender: TObject);
begin
  tbUsuarios.Last; //vai pro ultimo registro da tabela
end;

procedure TForm1.tbUsuariosAfterScroll(DataSet: TDataSet);
begin
  //antes de trocar "linha". Quando você clica em outro registro, o ponteiro aponta pro registro clicado,
  //depos do ponteiro aparecer no registro ele dispara esse evento
  //ShowMessage('AfterScroll');
  if (tbUsuarios.Eof) then //Eof end of file, ele verifca se o ponteiro esta no ultimo registro
  begin
    btProximo.Enabled := False;
    btUltimo.Enabled  := False;
  end
  else
  begin
    btProximo.Enabled := True;
    btUltimo.Enabled  := True;
  end;

  if (tbUsuarios.Bof) then //Bof Begin of file, ele verifca se o ponteiro esta no primerio registro
  begin
    btAnterior.Enabled := False;
    btPrimeiro.Enabled := False;
  end
  else
  begin
    btAnterior.Enabled := True;
    btPrimeiro.Enabled := True;
  end;

end;

procedure TForm1.tbUsuariosBeforeScroll(DataSet: TDataSet);
begin
  //antes de trocar "linha". Quando você clica em outro registro, o ponteiro aponta pro registro clicado,
  //antes do ponteiro aparecer no registro ele dispara esse evento
  //ShowMessage('BeforeScroll');
end;

end.
