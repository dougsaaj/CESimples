unit CEPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEDialogo, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPesquisar = class(TfrmDialogo)
    rgrOpcao: TRadioGroup;
    edtValor: TEdit;
    labValor: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure RealizarPesquisa;
  protected
    procedure PesquisarPorCodigo; virtual; abstract;
    procedure PesquisarPorNome; virtual; abstract;
  public
    { Public declarations }
  end;

var
  frmPesquisar: TfrmPesquisar;

implementation

{$R *.dfm}

procedure TfrmPesquisar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if Self.ModalResult = mrOk then
    Self.RealizarPesquisa();
end;

procedure TfrmPesquisar.RealizarPesquisa;
begin
  if rgrOpcao.ItemIndex = 0 then
    Self.PesquisarPorCodigo()
  else
    Self.PesquisarPorNome();
end;

end.
