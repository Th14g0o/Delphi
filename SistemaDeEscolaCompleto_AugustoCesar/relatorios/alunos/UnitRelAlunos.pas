unit UnitRelAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelAlunos = class(TForm)
    relAlunos: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAlunos: TfrmRelAlunos;

implementation

{$R *.dfm}

uses UnitDM;

end.
