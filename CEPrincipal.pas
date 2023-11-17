unit CEPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    cobPrincipal: TCoolBar;
    tobPrincipal: TToolBar;
    aclPrincipal: TActionList;
    imlPrincipal: TImageList;
    tobClientes: TToolButton;
    actClientes: TAction;
    actFornecedores: TAction;
    actProdutos: TAction;
    actPedidoVenda: TAction;
    actPedidoCompra: TAction;
    actRelatorios: TAction;
    actSair: TAction;
    tobFornecedores: TToolButton;
    tobProdutos: TToolButton;
    ToolButton3: TToolButton;
    tobPC: TToolButton;
    tobPV: TToolButton;
    ToolButton6: TToolButton;
    tobSair: TToolButton;
    tobRelatorios: TToolButton;
    panHints: TPanel;
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actFornecedoresExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure actPedidoCompraExecute(Sender: TObject);
    procedure actPedidoVendaExecute(Sender: TObject);
  private
    procedure ExibirHint(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  CECadCli;

{$R *.dfm}

//uses
 // CECadCli, CECadFnc, CECadProd, CEPedCompra, CEPedVenda, CEDM, CEDMFast;

procedure TfrmPrincipal.actClientesExecute(Sender: TObject);
begin
  if not Assigned(frmCadCli) then
    frmCadCli := TfrmCadCli.Create(Self);

  frmCadCli.Show;
end;

procedure TfrmPrincipal.actFornecedoresExecute(Sender: TObject);
begin
  {if not Assigned(frmCadFnc) then
    frmCadFnc := TfrmCadFnc.Create(Self);

  frmCadFnc.Show;  }
end;

procedure TfrmPrincipal.actPedidoCompraExecute(Sender: TObject);
begin
  {frmPedCompra := TfrmPedCompra.Create(Self);
  frmPedCompra.ShowModal;}
end;

procedure TfrmPrincipal.actPedidoVendaExecute(Sender: TObject);
begin
  {frmPedVenda := TfrmPedVenda.Create(Self);
  frmPedVenda.ShowModal; }
end;

procedure TfrmPrincipal.actProdutosExecute(Sender: TObject);
begin
  {if not Assigned(frmCadProd) then
    frmCadProd := TfrmCadProd.Create(Self);

  frmCadProd.Show; }
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrincipal.ExibirHint(Sender: TObject);
begin
  panHints.Caption := GetLongHint(Application.Hint);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Application.OnHint := Self.ExibirHint;
end;

end.
