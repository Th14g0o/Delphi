unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.Dialogs;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbProdutos: TFDTable;
    tbMovProdutos: TFDTable;
    tbMovimentacoes: TFDTable;
    dsProdutos: TDataSource;
    dsMovimentacoes: TDataSource;
    dsMovProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    tbMovimentacoesid: TFDAutoIncField;
    tbMovimentacoestipo: TStringField;
    tbMovimentacoesdataHora: TDateTimeField;
    tbMovimentacoesresponsavel: TStringField;
    tbMovimentacoesobservacoes: TMemoField;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosid_movimentacao: TIntegerField;
    tbMovProdutosid_produto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    sqlMovProdutos: TFDQuery;
    dsSqlMovProdutos: TDataSource;
    sqlMovProdutosid: TFDAutoIncField;
    sqlMovProdutosid_movimentacao: TIntegerField;
    sqlMovProdutosid_produto: TIntegerField;
    sqlMovProdutosqtd: TIntegerField;
    sqlMovProdutosnomeProduto: TStringField;
    sqlMovimentacoesid: TFDAutoIncField;
    sqlMovimentacoestipo: TStringField;
    sqlMovimentacoesdataHora: TDateTimeField;
    sqlMovimentacoesresponsavel: TStringField;
    sqlMovimentacoesobservacoes: TMemoField;
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure calcularTotais;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacoesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCadMovimentacao;

{$R *.dfm}

procedure TDM.calcularTotais;
var
  totais : Integer;
begin
  //Para garantir que a tabela tbMovProdutos ja esteja em modo naveção  quando essa procedure for chamda
  //se deve verificar o estado dela antes de pegar os valores e percorrer a tabela, com First, Next.
  //Para evitar possiveis erros no AfterScrool, visto que ele chamara calcular totais, assim que for clicado no from de CadMovimentacao
  //já que por padrão a tabela sempre vai abrir primeiro tbMovimentacao e ir pro seu primeiro registro
  //, depois tbMovProdutos, e pode ser que esta não estaja aberta ainda
  if (tbMovProdutos.State in [dsBrowse]) then
  begin
    tbMovProdutos.First;  // vai pro primeiro registro
    while not tbMovProdutos.Eof do //enquenato o ponteiro não estiver no ultimo registro
    begin
      totais := totais + tbMovProdutos.FieldByName('qtd').Value; //some totais com o valor do registro atual selecionado
      tbMovProdutos.Next; //mova o ponteiro pro proximo registro
    end;
    formCadMovimentacao.txtTotalProdutos.Caption := IntToStr(totais); //precisa adicionar o use
  end;

end;

procedure TDM.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
  //ao mudar o ponteiro/ao selecionar um registro
  calcularTotais;
end;

procedure TDM.tbMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
  if (tbMovProdutos.RecordCount > 0) then
  begin
    ShowMessage('Existem produtos cadastrados nessa movimentação. Exclua-os primeiro.');
    //por padrão o data modulo não possui a biblioteca dos modais tem que ser incluida no use da interface Vcl.Dialogs
    Abort; //aborta operação atual
  end;
end;

procedure TDM.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
  //apos deletar um registro reconta
  calcularTotais;
end;

procedure TDM.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
  //apos salvar a alteração(adição ou edição) de um registro reconta
  calcularTotais;

  if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada no Estoque') then
  begin
    sqlAumentaEstoque.ParamByName('pId').Value  := tbMovProdutos.FieldByName('id_produto').Value;
    sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
    sqlAumentaEstoque.Execute;
  end;
  if (tbMovimentacoes.FieldByName('tipo').Value = 'Saida do Estoque') then
  begin
    sqlDiminuiEstoque.ParamByName('pId').Value  := tbMovProdutos.FieldByName('id_produto').Value;
    sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
    sqlDiminuiEstoque.Execute;
  end;
end;

procedure TDM.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin
  //apos deletar o registro ja não existe mais então não tem como pegar os dados depois de deletar por isso, foi adicionado no before
  //visto que ele vai ser deleta, esse seria o momento exatamente antes de excluir
  if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada no Estoque') then
  begin
    sqlDiminuiEstoque.ParamByName('pId').Value  := tbMovProdutos.FieldByName('id_produto').Value;
    sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
    sqlDiminuiEstoque.Execute;
  end;
  if (tbMovimentacoes.FieldByName('tipo').Value = 'Saida do Estoque') then
  begin
    sqlAumentaEstoque.ParamByName('pId').Value  := tbMovProdutos.FieldByName('id_produto').Value;
    sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
    sqlAumentaEstoque.Execute;
  end;
end;

end.
