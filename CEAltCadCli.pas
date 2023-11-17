unit CEAltCadCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEAltCadastro, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Uclientes;

type
  TfrmAltCadCliente = class(TfrmAltCadastro)
    labCodigo: TLabel;
    edtCodigo: TDBEdit;
    labNome: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    edtEndereco: TDBEdit;
    Label4: TLabel;
    edtBairro: TDBEdit;
    Label5: TLabel;
    edtCidade: TDBEdit;
    Label6: TLabel;
    cmbUF: TDBComboBox;
    Label7: TLabel;
    edtCep: TDBEdit;
    Label9: TLabel;
    edtCpfCnpj: TDBEdit;
    rgTipoFiscal: TDBRadioGroup;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    FTipoMovimentacao: string;
    cliente: TCliente;
    procedure PreencheClasse;

  public
    { Public declarations }

    procedure Inserir;
    procedure Editar;

  published
    property TipoMovimentacao: string read FTipoMovimentacao write FTipoMovimentacao;

  end;

implementation

{$R *.dfm}

uses CEDM, CEDMCliente, UclienteDao, UServicos;

{ TfrmAltCadCli }

procedure TfrmAltCadCliente.btnOkClick(Sender: TObject);
begin
  if TipoMovimentacao = 'Inserir' then
    Self.Inserir()
  else
  if TipoMovimentacao = 'Editar' then
    Self.Editar();
end;

procedure TfrmAltCadCliente.Editar;
var
  clienteDao: TClientesDao;
begin
  Self.PreencheClasse;

  clienteDao := TClientesDao.Create(DMCE.Conn);

  try
    DMCE.IniciarTransacao();
    clienteDao.Alterar(cliente);
    DMCE.CommitTransacao();

    Servicos.Mensagem.INFO('Cliente alterado com sucesso!!!');
  except
    Servicos.Mensagem.WARNING('Falha ao tentar alterar o cliente.');
    DMCE.RollbackTransacao();
  end;

  FreeAndNil(cliente);
  FreeAndNil(clienteDao);
end;

procedure TfrmAltCadCliente.Inserir;
var
  clienteDao: TClientesDao;
begin
  Self.PreencheClasse;

  clienteDao := TClientesDao.Create(DMCE.Conn);

  try
    DMCE.IniciarTransacao();
    clienteDao.Cadastrar(cliente);
    DMCE.CommitTransacao();

    Servicos.Mensagem.INFO('Cliente cadastrado com sucesso!!!');
  except
    Servicos.Mensagem.WARNING('Falha ao tentar cadastrar o cliente.');
    DMCE.RollbackTransacao();
  end;

  FreeAndNil(cliente);
  FreeAndNil(clienteDao);
end;

procedure TfrmAltCadCliente.PreencheClasse;
begin
  if Assigned(cliente) then
    cliente := TCliente.Create;

  cliente.CHAVECLI   := StrToInt(edtCodigo.Text);
  cliente.NOME       := edtNome.Text;
  cliente.ENDERECO   := edtEndereco.Text;
  cliente.BAIRRO     := edtBairro.Text;
  cliente.CIDADE     := edtCidade.Text;
  cliente.UF         := cmbUF.Text;
  cliente.CEP        := edtCep.Text;
  cliente.TIPOFISCAL := rgTipoFiscal.ItemIndex;
  cliente.CPFCNPJ    := edtCpfCnpj.Text;
end;

end.
