unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtDlgs;

type
  TFormPrincipal = class(TForm)
    DBGrid: TDBGrid;
    EdtTitulo: TDBEdit;
    DBNavigator: TDBNavigator;
    BtIncluir: TButton;
    OpenDialog: TOpenDialog;
    Image: TImage;
    BtConsultar: TButton;
    LabelErro: TEdit;
    procedure BtIncluirClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure ConsultarTudo;
    procedure DBGridCellClick(Column: TColumn);
    procedure SaveBlobToFile;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitDM,
     Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;


procedure TFormPrincipal.ConsultarTudo;
begin
  DM.QJogos.Close;
  DM.QJogos.Open;
end;

procedure TFormPrincipal.BtConsultarClick(Sender: TObject);
begin
  ConsultarTudo;
end;

procedure TFormPrincipal.BtIncluirClick(Sender: TObject);
var
  MemoryStream: TMemoryStream;
begin
  if DM.QJogos.IsEmpty then
  begin
    ShowMessage('Nenhum registro selecionado!');
    Exit;
  end;

  // Abre o diálogo para selecionar a imagem
  if OpenDialog.Execute then
  begin
    MemoryStream := TMemoryStream.Create;
    try
      // Carrega a imagem no MemoryStream
      MemoryStream.LoadFromFile(OpenDialog.FileName);
      MemoryStream.Position := 0;

      // Coloca o dataset em modo de edição
      DM.QJogos.Edit;

      // Salva a imagem no campo BLOB
      TBlobField(DM.QJogos.FieldByName('Foto')).LoadFromStream(MemoryStream);

      DM.QJogos.Post;

      ShowMessage('Imagem anexada com sucesso!');
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao anexar imagem: ' + E.Message);
        LabelErro.Text := 'Erro: ' + E.Message;
      end;
    end;
    MemoryStream.Free;
  end;
end;

//procedure TFormPrincipal.DBGridCellClick(Column: TColumn);
//var
//  MemoryStream: TMemoryStream;
//  BlobField: TBlobField;
//  Graphic: TGraphic;
//  ImgHeader: TBytes;
//  IsValidImage: Boolean;
//begin
//  // Verifica se o dataset está ativo e não está vazio
//  if not DM.QJogos.Active then
//  begin
//    ShowMessage('O dataset não está ativo.');
//    Exit;
//  end;
//
//  if DM.QJogos.IsEmpty then
//  begin
//    ShowMessage('Nenhum registro selecionado.');
//    Exit;
//  end;
//
//  // Verifica se o campo "Foto" existe no dataset
//  if DM.QJogos.FindField('Foto') = nil then
//  begin
//    ShowMessage('Campo "Foto" não encontrado no dataset.');
//    Exit;
//  end;
//
//  // Verifica se o campo "Foto" não está nulo
//  BlobField := DM.QJogos.FieldByName('Foto') as TBlobField;
//
//  if (BlobField <> nil) and not BlobField.IsNull then
//  begin
//    MemoryStream := TMemoryStream.Create;
//    try
//      try
//        // Carrega o campo BLOB no MemoryStream
//        BlobField.SaveToStream(MemoryStream);
//        MemoryStream.Position := 0;
//
//        // Lê os primeiros bytes para identificar o tipo da imagem
//        SetLength(ImgHeader, 10);
//        MemoryStream.ReadBuffer(ImgHeader[0], 10);
//
//        // Inicializa a variável de verificação
//        IsValidImage := False;
//
//        // Detecta o tipo da imagem com base nos cabeçalhos (magic bytes)
//        if (ImgHeader[0] = $FF) and (ImgHeader[1] = $D8) then
//        begin
//          // JPEG
//          Graphic := TJPEGImage.Create;
//          IsValidImage := True;
//        end
//        else if (ImgHeader[0] = $89) and (ImgHeader[1] = $50) and
//                (ImgHeader[2] = $4E) and (ImgHeader[3] = $47) then
//        begin
//          // PNG
//          Graphic := TPngImage.Create;
//          IsValidImage := True;
//        end
//        else if (ImgHeader[0] = $42) and (ImgHeader[1] = $4D) then
//        begin
//          // BMP
//          Graphic := TBitmap.Create;
//          IsValidImage := True;
//        end;
//
//        // Se a imagem for válida, carrega o conteúdo no TImage
//        if IsValidImage then
//        begin
//          // Carrega a imagem do MemoryStream
//          Graphic.LoadFromStream(MemoryStream);
//
//          // Atribui a imagem carregada ao componente Image
//          Image.Picture.Graphic := Graphic;
//        end
//        else
//        begin
//          raise Exception.Create('Formato de imagem não reconhecido ou corrompido.');
//        end;
//
//      except
//        on E: Exception do
//        begin
//          ShowMessage('Erro ao carregar a imagem: ' + E.Message);
//          LabelErro.Text := 'Erro: ' + E.Message;
//        end;
//      end;
//    finally
//      MemoryStream.Free;
//    end;
//  end
//  else
//  begin
//    // Limpa o TImage se não houver imagem
//    Image.Picture := nil;
//    ShowMessage('Nenhuma imagem disponível para este registro.');
//  end;
//end;

procedure TFormPrincipal.DBGridCellClick(Column: TColumn);
var
  MemoryStream: TMemoryStream;
  BlobField: TBlobField;
begin
  // Verifica se o dataset está ativo e não está vazio
  if not DM.QJogos.Active then
  begin
    ShowMessage('O dataset não está ativo.');
    Exit;
  end;

  if DM.QJogos.IsEmpty then
  begin
    ShowMessage('Nenhum registro selecionado.');
    Exit;
  end;

  // Verifica se o campo "Foto" existe no dataset
  if DM.QJogos.FindField('Foto') = nil then
  begin
    ShowMessage('Campo "Foto" não encontrado no dataset.');
    Exit;
  end;

  // Verifica se o campo "Foto" não está nulo
  BlobField := DM.QJogos.FieldByName('Foto') as TBlobField;

  if (BlobField <> nil) and not BlobField.IsNull then
  begin
    MemoryStream := TMemoryStream.Create;
    try
      try
        // Carrega o campo BLOB no MemoryStream
        BlobField.SaveToStream(MemoryStream);
        MemoryStream.Position := 0;

        // Carrega a imagem no TImage a partir do MemoryStream
        Image.Picture.LoadFromStream(MemoryStream);
      except
        on E: Exception do
        begin
          ShowMessage('Erro ao carregar a imagem: ' + E.Message);
          LabelErro.Text := 'Erro: ' + E.Message;
        end;
      end;
    finally
      MemoryStream.Free;
    end;
  end
  else
  begin
    // Limpa o TImage se não houver imagem
    Image.Picture := nil;
    ShowMessage('Nenhuma imagem disponível para este registro.');
  end;
end;


//procedure TFormPrincipal.DBGridCellClick(Column: TColumn);
//begin
//  SaveBlobToFile;
//end;


procedure TFormPrincipal.SaveBlobToFile;
var
  MemoryStream: TMemoryStream;
  BlobField: TBlobField;
  FileStream: TFileStream;
begin
  BlobField := DM.QJogos.FieldByName('Foto') as TBlobField;
  if (BlobField <> nil) and not BlobField.IsNull then
  begin
    MemoryStream := TMemoryStream.Create;
    try
      BlobField.SaveToStream(MemoryStream);
      MemoryStream.Position := 0;

      FileStream := TFileStream.Create('C:\Repos\imagem_extraida.png', fmCreate);
      try
        FileStream.CopyFrom(MemoryStream, MemoryStream.Size);
      finally
        FileStream.Free;
      end;

      ShowMessage('Imagem salva em C:\Repos\imagem_extraida.png');
    finally
      MemoryStream.Free;
    end;
  end;
end;



end.
