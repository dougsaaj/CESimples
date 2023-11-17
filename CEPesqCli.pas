unit CEPesqCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEPesquisar, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPesqCli = class(TfrmPesquisar)
  private
  protected
    procedure PesquisarPorCodigo; override;
    procedure PesquisarPorNome; override;
  public
    { Public declarations }
  end;

var
  frmPesqCli: TfrmPesqCli;

implementation

{$R *.dfm}

uses CEDM, Data.DB;

procedure TfrmPesqCli.PesquisarPorCodigo;
begin
  //dtmCE.idsCliente.Locate('CHAVECLI', edtValor.Text, []);
end;

procedure TfrmPesqCli.PesquisarPorNome;
begin
  //dtmCE.idsCliente.Locate('NOME', edtValor.Text, [loPartialKey, loCaseInsensitive]);
end;


end.
