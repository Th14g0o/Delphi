unit UnitClassJogo;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TJogo = class
  private
    FTitulo : string;
    FDesc   : string;
    FValor  : string;
    FJogos  : TList<TJogo>;
  public

    constructor Create(aTitulo: string; aDesc: string; aValor: Real);

    procedure AddJogo(aJogo: TJogo);
    function GetJogos : TList<TJogo>;
    function GetTitulo : string;
    function GetValor : string;
    function GetDesc : string;
  end;

implementation

constructor TJogo.Create(aTitulo: string; aDesc: string; aValor: Real);
begin
  FTitulo := aTitulo;
  FDesc   := aDesc;
  FValor  := FloatToStr(aValor);
  FJogos := TList<TJogo>.Create; // Inicializa a lista de jogos
end;


procedure TJogo.AddJogo(aJogo: TJogo);
begin
  FJogos.Add(aJogo);
end;

function TJogo.GetJogos;
begin
  Result := FJogos;
end;

function TJogo.GetValor;
begin
  Result := FValor;
end;
function TJogo.GetTitulo;
begin
  Result := FTitulo;
end;
function TJogo.GetDesc;
begin
  Result := FDesc;
end;

end.
