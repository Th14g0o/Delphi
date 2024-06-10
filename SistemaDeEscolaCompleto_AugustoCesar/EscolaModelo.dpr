program EscolaModelo;

uses
  Vcl.Forms,
  UnitDM in 'dm\UnitDM.pas' {DM: TDataModule},
  UnitPrincipal in 'principal\UnitPrincipal.pas' {frmPrincipal},
  UnitCadResponsaveis in 'responsaveis\UnitCadResponsaveis.pas' {frmCadResponsaveis};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  //Application.CreateForm(TfrmCadResponsaveis, frmCadResponsaveis);   Para não ocupar espaço na memoria quando iniciar o sistema
  Application.Run;
end.
