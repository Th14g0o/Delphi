program ProjetoCrudFiredac;

uses
  Vcl.Forms,
  UnitHome in 'UnitHome.pas' {FormHome},
  ModuloCliente in 'ModuloCliente.pas' {DataModule1: TDataModule},
  UnitObjeto in 'UnitObjeto.pas' {FormObjeto},
  UnitModalConfirma in 'UnitModalConfirma.pas' {FormConfirma};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHome, FormHome);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormObjeto, FormObjeto);
  Application.CreateForm(TFormConfirma, FormConfirma);
  Application.Run;
end.
