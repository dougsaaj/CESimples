unit CEAltCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEDialogo, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet;

type
  TfrmAltCadastro = class(TfrmDialogo)
    dbnAltCadastro: TDBNavigator;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    //procedure dbnAltCadastroClick(Sender: TObject; Button: TNavigateBtn);
  private
    Fitr: TIBTransaction;
    FDataSet: TDataSet;
  protected
  public
    {procedure Inserir;
    procedure Editar;
    procedure Excluir; }
  end;

var
  frmAltCadastro: TfrmAltCadastro;

implementation

{$R *.dfm}

procedure TfrmAltCadastro.FormCreate(Sender: TObject);
begin
  inherited;

  if (Self.dbnAltCadastro.DataSource <> nil) and
     (Self.dbnAltCadastro.DataSource.DataSet <> nil) then
    FDataSet := Self.dbnAltCadastro.DataSource.DataSet
  else
    raise Exception.Create('Não foi inicializado Dataset do Navegador!');

  {if FDataSet is TIBDataSet then
    Fitr := TIBDataSet(FDataSet).Transaction
  else
    raise Exception.Create('Não foi inicializado componente de transação!');  }
end;

procedure TfrmAltCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  {if Self.ModalResult = mrOk then
  begin
    if FDataSet.State in [dsEdit, dsInsert] then
      FDataSet.Post;
      
    Fitr.CommitRetaining;
  end else
  begin
    FDataSet.Cancel;
    Fitr.RollbackRetaining;
  end;}
end;

  {
procedure TfrmAltCadastro.dbnAltCadastroClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  Fitr.CommitRetaining;
end;

procedure TfrmAltCadastro.Editar;
begin
  FDataSet.Edit;
  Self.ShowModal;
end;

procedure TfrmAltCadastro.Excluir;
begin
  if MessageDlg('Deseja realmente excluir o registro em foco?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    FDataSet.Delete;
    Fitr.CommitRetaining;
  end;
end;

procedure TfrmAltCadastro.Inserir;
begin
  FDataSet.Insert;
  Self.ShowModal;
end;  }

end.
