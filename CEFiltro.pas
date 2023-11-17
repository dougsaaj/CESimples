unit CEFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEDialogo, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, IBX.IBCustomDataSet;

type
  TfrmFiltro = class(TfrmDialogo)
    labValor: TLabel;
    rgrCampos: TRadioGroup;
    edtValor: TEdit;
    rgrCondicao: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AplicarFiltro;
  protected
    procedure ObterDataSet(out DataSet: TIBDataSet; out Tabela: String); virtual; abstract;
  public
    { Public declarations }
  end;

var
  frmFiltro: TfrmFiltro;

implementation

{$R *.dfm}

const
  c_Operadores: Array[0..4] of String = ('=', '>', '<', '<>', 'like');

procedure TfrmFiltro.AplicarFiltro;
var
  Campo, Valor, Operador, Tabela, sql: String;
  DataSet: TIBDataSet;
begin
  Campo := rgrCampos.Items[rgrCampos.ItemIndex];
  Operador := c_Operadores[rgrCondicao.ItemIndex];
  Valor := edtValor.Text;
  Self.ObterDataSet(DataSet, Tabela);

  if rgrCondicao.ItemIndex = 4 then
    sql := Format('select * from %s where upper(%s) %s upper(''%%%s%%'')',
      [Tabela, Campo, Operador, Valor])
  else
    sql := Format('select * from %s where upper(%s) %s upper(''%s'')',
      [Tabela, Campo, Operador, Valor]);

  DataSet.DisableControls;
  try
    DataSet.Close;
    DataSet.SelectSQL.Text := sql;
    DataSet.Open;
  finally
    DataSet.EnableControls;
  end;

// select C.* from CLIENTE C where C.CODIGO = 1
// select C.* from CLIENTE C where C.NOME like '%Silva%'
end;

procedure TfrmFiltro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if ModalResult = mrOk then
    Self.AplicarFiltro();
end;

end.
