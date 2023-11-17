unit CECadCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CECadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, CECadCliente;

type
  TfrmCadCli = class(TfrmCadastro)
    procedure FormDestroy(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actOrdenarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}

uses CEDM, CEPesqCli, CEFiltCli, CEDMCliente, UServicos, Uclientes, UclienteDao, CERelCliente;

procedure TfrmCadCli.actEditarExecute(Sender: TObject);
begin
  if (not DMCECliente.CdsCliente.Active) or (DMCECliente.CdsCliente.RecordCount = 0) then
  begin
    Servicos.Mensagem.WARNING('Nenhum cliente encontrado para alteração.');
    Exit;
  end;

  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  try
    FrmCadCliente.TipoMovimentacao := 'Editar';
    FrmCadCliente.PreencheEdits(DMCECliente.CdsClienteCHAVECLI.AsInteger);
    FrmCadCliente.ShowModal;
  finally
    FrmCadCliente.Release;
  end;
end;

procedure TfrmCadCli.actInserirExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  try
    FrmCadCliente.TipoMovimentacao := 'Inserir';
    FrmCadCliente.ShowModal;
  finally
    FrmCadCliente.Release;
  end;
end;

procedure TfrmCadCli.actOrdenarExecute(Sender: TObject);
begin
  if (not DMCECliente.CdsCliente.Active) or (DMCECliente.CdsCliente.RecordCount = 0) then
  begin
    Servicos.Mensagem.WARNING('Nenhum cliente encontrado.');
    Exit;
  end;

  if FrmRelCliente = nil then
    Application.CreateForm(TFrmRelCliente, FrmRelCliente);

  FrmRelCliente.Close;
end;

procedure TfrmCadCli.actExcluirExecute(Sender: TObject);
var
  Cliente: TCliente;
  ClienteDao: TClientesDao;
begin
  if (not DMCECliente.CdsCliente.Active) or (DMCECliente.CdsCliente.RecordCount = 0) then
  begin
    Servicos.Mensagem.WARNING('Nenhum cliente encontrado para alteração.');
    Exit;
  end;

  if not Servicos.Mensagem.QUESTION('Tem certeza que deseja excluir o cliente?') then
    Exit;

  Cliente := TCliente.Create;
  Cliente.CHAVECLI := DMCECliente.CdsClienteCHAVECLI.AsInteger;

  ClienteDao := TClientesDao.Create(DMCE.Conn);

  try
    DMCE.IniciarTransacao();

    if ClienteDao.Deletar(Cliente) then
      DMCE.CommitTransacao()
    else
    begin
      DMCE.RollbackTransacao();
      Servicos.Mensagem.WARNING('Falha ao tentar excluir o cliente.');
      Cliente.Destroy;
      ClienteDao.Destroy;
      Exit;
    end;

    DMCECliente.CdsCliente.Refresh;
  except
    Cliente.Destroy;
    ClienteDao.Destroy;
  end;
end;

procedure TfrmCadCli.actFiltrarExecute(Sender: TObject);
begin
  if FfrmFiltro = nil then
    FfrmFiltro := TfrmFiltCli.Create(Self);

  inherited;
end;


procedure TfrmCadCli.actPesquisarExecute(Sender: TObject);
begin
  if FfrmPesquisar = nil then
    FfrmPesquisar := TfrmPesqCli.Create(Self);

  inherited;
end;

procedure TfrmCadCli.FormCreate(Sender: TObject);
begin
  DMCECliente := TDMCECliente.Create(nil);

  inherited;
end;

procedure TfrmCadCli.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DMCECliente);

  inherited;
  frmCadCli := nil;
end;

end.
