unit CEDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.DBXCommon;

type
  TDMCE = class(TDataModule)
    Conn: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FTransacao: TDBXTransaction;

  public
    { Public declarations }
    procedure IniciarTransacao;
    procedure CommitTransacao;
    procedure RollbackTransacao;

  end;

var
  DMCE: TDMCE;

implementation

uses
  UServicos;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMCE }

procedure TDMCE.CommitTransacao;
begin
  if not Assigned(FTransacao) then
    raise Exception.Create(ClassName + ': Transação não inicializada.');

  Conn.CommitFreeAndNil(FTransacao);
end;

procedure TDMCE.DataModuleCreate(Sender: TObject);
begin
  Conn.Connected           := False;
  Conn.DriverName          := 'Firebird';
  Conn.ConnectionName      := 'Servidor';
  Conn.GetDriverFunc       := 'getSQLDriverINTERBASE';
  Conn.LibraryName         := 'dbexpint.dll';
  Conn.VendorLib           := 'fbclient.dll';
  Conn.LoadParamsOnConnect := False;

  Conn.Params.Values['database']  := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('CAMINHO'));
  Conn.Params.Values['User_Name'] := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('USUARIO'));
  Conn.Params.Values['Password']  := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('SENHA'));

end;

procedure TDMCE.IniciarTransacao;
begin
  if Assigned(FTransacao) then
    raise Exception.Create(ClassName + ': Transação já inicializada.');

  FTransacao := Conn.BeginTransaction(TDBXIsolations.ReadCommitted);
end;

procedure TDMCE.RollbackTransacao;
begin
  if not Assigned(FTransacao) then
    raise Exception.Create(ClassName + ': Transação não inicializada.');

  Conn.RollbackFreeAndNil(FTransacao);
end;

end.
