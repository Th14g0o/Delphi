program EscolaModelo;

uses
  Vcl.Forms,
  UnitDM in 'dm\UnitDM.pas' {DM: TDataModule},
  UnitPrincipal in 'principal\UnitPrincipal.pas' {frmPrincipal},
  UnitCadResponsaveis in 'responsaveis\UnitCadResponsaveis.pas' {frmCadResponsaveis},
  UnitAlunos in 'alunos\UnitAlunos.pas' {frmCadAlunos},
  UnitRelAlunos in 'relatorios\alunos\UnitRelAlunos.pas' {frmRelAlunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRelAlunos, frmRelAlunos);
  Application.Run;
end.
