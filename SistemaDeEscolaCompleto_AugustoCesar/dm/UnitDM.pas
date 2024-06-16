unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbResponsaveis: TFDTable;
    tbResponsaveisid: TFDAutoIncField;
    tbResponsaveisnome: TStringField;
    tbResponsaveisrg: TStringField;
    tbResponsaveiscpf: TStringField;
    tbResponsaveisoperadora: TStringField;
    tbResponsaveiscelular: TStringField;
    tbResponsaveisparentesco: TStringField;
    dsResponsaveis: TDataSource;
    tbAlunos: TFDTable;
    dsAlunos: TDataSource;
    tbAlunosid: TFDAutoIncField;
    tbAlunosnome: TStringField;
    tbAlunosendereco: TStringField;
    tbAlunosbairro: TStringField;
    tbAlunoscidade: TStringField;
    tbAlunosuf: TStringField;
    tbAlunoscep: TStringField;
    tbAlunoscelular: TStringField;
    tbAlunosoperadora: TStringField;
    tbAlunosemail: TStringField;
    tbAlunosautorizadoSairCom: TStringField;
    tbAlunosensinoReligioso: TShortintField;
    tbAlunosresponsavelCarne: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
