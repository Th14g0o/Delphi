program ProjetoMensageiro;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {TelaUm},
  UnitSecundaria in 'UnitSecundaria.pas' {TelaDois};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaUm, TelaUm);
  Application.CreateForm(TTelaDois, TelaDois);
  Application.Run;
end.
