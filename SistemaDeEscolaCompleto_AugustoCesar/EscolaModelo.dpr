program EscolaModelo;

uses
  Vcl.Forms,
  UnitDM in 'dm\UnitDM.pas' {DM: TDataModule},
  UnitPrincipal in 'principal\UnitPrincipal.pas' {frmPrincipal},
  UnitCadResponsaveis in 'responsaveis\UnitCadResponsaveis.pas' {frmCadResponsaveis},
  UnitAlunos in 'alunos\UnitAlunos.pas' {frmCadAlunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
