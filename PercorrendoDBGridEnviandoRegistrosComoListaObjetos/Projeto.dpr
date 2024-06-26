program Projeto;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitSecundario in 'UnitSecundario.pas' {FormSecundario},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitFrame in 'UnitFrame.pas' {FrameJogo: TFrame},
  UnitClassJogo in 'UnitClassJogo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormSecundario, FormSecundario);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
