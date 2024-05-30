program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPrincipal},
  UnitCadProduto in 'UnitCadProduto.pas' {formCadProduto},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas' {formCadMovimentacao},
  UnitConsMovimentacao in 'UnitConsMovimentacao.pas' {formConsMovimentacao},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadProduto, formCadProduto);
  Application.CreateForm(TformCadMovimentacao, formCadMovimentacao);
  Application.CreateForm(TformConsMovimentacao, formConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
