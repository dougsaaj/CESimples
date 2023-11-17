unit CEFiltCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEFiltro, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, IBX.IBCustomDataSet;

type
  TfrmFiltCli = class(TfrmFiltro)
  private
  protected
    procedure ObterDataSet(out DataSet: TIBDataSet; out Tabela: String); override;
  public
    { Public declarations }
  end;

var
  frmFiltCli: TfrmFiltCli;

implementation

{$R *.dfm}

uses CEDM;

{ TfrmFilCli }

procedure TfrmFiltCli.ObterDataSet(out DataSet: TIBDataSet; out Tabela: String);
begin
  inherited;
  //DataSet := dtmCE.idsCliente;
  Tabela := 'CLIENTE';
end;

end.
