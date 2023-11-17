program CursoDelphi;

uses
  Vcl.Forms,
  CEPrincipal in 'CEPrincipal.pas' {frmPrincipal},
  CEDM in 'CEDM.pas' {DMCE: TDataModule},
  CBanco in 'classes\CBanco.pas',
  UServicos in 'classes\servicos\UServicos.pas',
  uServicosMensagens in 'classes\servicos\uServicosMensagens.pas',
  UServicosConexao in 'classes\servicos\UServicosConexao.pas',
  CECadastro in 'CECadastro.pas' {frmCadastro},
  CEDialogo in 'CEDialogo.pas' {frmDialogo},
  CEPesquisar in 'CEPesquisar.pas' {frmPesquisar},
  CEFiltro in 'CEFiltro.pas' {frmFiltro},
  CECadCli in 'CECadCli.pas' {frmCadCli},
  CEAltCadastro in 'CEAltCadastro.pas' {frmAltCadastro},
  CEDMCliente in 'CEDMCliente.pas' {DMCECliente: TDataModule},
  CEPesqCli in 'CEPesqCli.pas' {frmPesqCli},
  CEFiltCli in 'CEFiltCli.pas' {frmFiltCli},
  UclienteDao in 'classes\clientes\UclienteDao.pas',
  Uclientes in 'classes\clientes\Uclientes.pas',
  CECadCliente in 'CECadCliente.pas' {FrmCadCliente},
  CERelCliente in 'CERelCliente.pas' {FrmRelCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMCE, DMCE);
  Application.Run;
end.
