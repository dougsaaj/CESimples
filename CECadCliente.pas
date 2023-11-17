unit CECadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CEAltCadastro, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uclientes, Vcl.Mask;

type
  TFrmCadCliente = class(TfrmAltCadastro)
    labCodigo: TLabel;
    labNome: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtCep: TEdit;
    edtCPF: TEdit;
    cbbEstado: TComboBox;
    rgTipoFiscal: TRadioGroup;
    procedure btnOkClick(Sender: TObject);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FTipoMovimentacao: string;
    cliente: TCliente;
    procedure PreencheClasse;

  public
    { Public declarations }
    procedure Inserir;
    procedure Editar;
    procedure PreencheEdits(IdCliente: Integer);

  published
    property TipoMovimentacao: string read FTipoMovimentacao write FTipoMovimentacao;

  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

uses
  CEDM, CEDMCliente, UclienteDao, UServicos;

{$R *.dfm}

{ TFrmCadCliente }

procedure TFrmCadCliente.btnOkClick(Sender: TObject);
begin
  if TipoMovimentacao = 'Inserir' then
    Self.Inserir()
  else
  if TipoMovimentacao = 'Editar' then
  begin
    if not Servicos.Mensagem.QUESTION('Tem certeza que deseja alterar o cliente?') then
      Exit;

    Self.Editar();
  end;

  DMCECliente.CdsCliente.Refresh;
end;

procedure TFrmCadCliente.Editar;
var
  clienteDao: TClientesDao;
begin
  Self.PreencheClasse;

  clienteDao := TClientesDao.Create(DMCE.Conn);

  try
    DMCE.IniciarTransacao();
    if clienteDao.Alterar(cliente) then
    begin
      DMCE.CommitTransacao();
      Servicos.Mensagem.INFO('Cliente alterado com sucesso!!!');
    end else
    begin
      Servicos.Mensagem.WARNING('Falha ao tentar alterar o cliente.');
      DMCE.RollbackTransacao();
    end;
  except
    Servicos.Mensagem.WARNING('Falha ao tentar alterar o cliente.');
    DMCE.RollbackTransacao();
  end;

  FreeAndNil(cliente);
  FreeAndNil(clienteDao);
end;

procedure TFrmCadCliente.edtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', Chr(8), Chr(13)]) then
    Key:= #0;
end;

procedure TFrmCadCliente.Inserir;
var
  clienteDao: TClientesDao;
begin
  Self.PreencheClasse;

  clienteDao := TClientesDao.Create(DMCE.Conn);

  try
    DMCE.IniciarTransacao();
    if clienteDao.Cadastrar(cliente) then
    begin
      DMCE.CommitTransacao();
      Servicos.Mensagem.INFO('Cliente cadastrado com sucesso!!!');
    end else
    begin
      DMCE.RollbackTransacao();
      Servicos.Mensagem.WARNING('Falha ao tentar cadastrar o cliente.');
    end;
  except
    DMCE.RollbackTransacao();
    Servicos.Mensagem.WARNING('Falha ao tentar cadastrar o cliente.');
  end;

  FreeAndNil(cliente);
  FreeAndNil(clienteDao);
end;

procedure TFrmCadCliente.PreencheEdits(IdCliente: Integer);
var
  cCliente: TCliente;
  cClienteDao: TClientesDao;
begin
  cCliente := TCliente.Create;
  cCliente.CHAVECLI := IdCliente;

  cClienteDao := TClientesDao.Create(DMCE.Conn);
  if cClienteDao.Pesquisar(cCliente) then
  begin
    edtCodigo.Text         := IntToStr(cCliente.CHAVECLI);
    edtNome.Text           := cCliente.NOME;
    edtEndereco.Text       := cCliente.ENDERECO;
    edtBairro.Text         := cCliente.BAIRRO;
    edtCidade.Text         := cCliente.CIDADE;
    edtCep.Text            := cCliente.CEP;
    edtCPF.Text            := cCliente.CPFCNPJ;

    cbbEstado.ItemIndex    := cbbEstado.Items.IndexOf(cCliente.UF);
    rgTipoFiscal.ItemIndex := cCliente.TIPOFISCAL;
  end else
  begin
    Servicos.Mensagem.WARNING('Cliente não encontrado!');
  end;

  FreeAndNil(cCliente);
  FreeAndNil(cClienteDao);
end;

procedure TFrmCadCliente.PreencheClasse;
begin
  cliente := TCliente.Create;

  if Trim(TipoMovimentacao) = 'Inserir' then
    cliente.CHAVECLI   := 0
  else
    cliente.CHAVECLI   := StrToInt(edtCodigo.Text);

  cliente.NOME       := edtNome.Text;
  cliente.ENDERECO   := edtEndereco.Text;
  cliente.BAIRRO     := edtBairro.Text;
  cliente.CIDADE     := edtCidade.Text;
  cliente.UF         := cbbEstado.Text;
  cliente.CEP        := edtCep.Text;
  cliente.TIPOFISCAL := rgTipoFiscal.ItemIndex;
  cliente.CPFCNPJ    := edtCPF.Text;
end;

end.
