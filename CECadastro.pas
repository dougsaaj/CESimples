unit CECadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  CEAltCadastro, CEPesquisar, CEFiltro;

type
  TfrmCadastro = class(TForm)
    grdCadastro: TDBGrid;
    aclCadastro: TActionList;
    imlCadastro: TImageList;
    actInserir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actPesquisar: TAction;
    actFiltrar: TAction;
    actOrdenar: TAction;
    actFechar: TAction;
    mmeCadastro: TMainMenu;
    mitCadastro: TMenuItem;
    mitInserir: TMenuItem;
    mitEditar: TMenuItem;
    mitExcluir: TMenuItem;
    mitSelecionar: TMenuItem;
    mitFiltrar: TMenuItem;
    mitLocalizar: TMenuItem;
    mitPesquisar: TMenuItem;
    cobCadastros: TCoolBar;
    tobCadastros: TToolBar;
    btnInserir: TToolButton;
    btnEditar: TToolButton;
    btnExcluir: TToolButton;
    ToolButton4: TToolButton;
    btnPesquisar: TToolButton;
    btnFiltrar: TToolButton;
    btnOrdenar: TToolButton;
    panRodape: TPanel;
    btnFechar: TBitBtn;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdCadastroDblClick(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDataSet: TDataSet;
  protected
    FfrmAltCadastro: TfrmAltCadastro;
    FfrmPesquisar: TfrmPesquisar;
    FfrmFiltro: TfrmFiltro;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses CEDM, CEDMCliente;

procedure TfrmCadastro.actEditarExecute(Sender: TObject);
begin
  //FfrmAltCadastro.Editar();
end;

procedure TfrmCadastro.actExcluirExecute(Sender: TObject);
begin
  //FfrmAltCadastro.Excluir();
end;

procedure TfrmCadastro.actFecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadastro.actFiltrarExecute(Sender: TObject);
begin
  FfrmFiltro.ShowModal;
end;

procedure TfrmCadastro.actInserirExecute(Sender: TObject);
begin
 // FfrmAltCadastro.Inserir();
end;

procedure TfrmCadastro.actPesquisarExecute(Sender: TObject);
begin
  FfrmPesquisar.ShowModal;
end;

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FDataSet) then
    FDataSet.Close;

  Action := caFree;
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
  if Assigned(Self.grdCadastro.DataSource) then
    FDataSet := Self.grdCadastro.DataSource.DataSet;
end;

procedure TfrmCadastro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FfrmAltCadastro);
  FreeAndNil(FfrmPesquisar);
  FreeAndNil(FfrmFiltro);
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  if Assigned(FDataSet) then
    FDataSet.Open;
end;

procedure TfrmCadastro.grdCadastroDblClick(Sender: TObject);
begin
  actEditar.Execute;
end;

end.
