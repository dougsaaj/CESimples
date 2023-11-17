unit CERelCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TFrmRelCliente = class(TForm)
    RLReport: TRLReport;
    RLBandTitulo: TRLBand;
    RLBandCabecalho: TRLBand;
    RLBandDetalhe: TRLBand;
    RLBandRodape: TRLBand;
    RlblTitulo: TRLLabel;
    RlblCodigo: TRLLabel;
    RLDBTCodigo: TRLDBText;
    RLLabel3: TRLLabel;
    RlblNome: TRLLabel;
    RlblCPF: TRLLabel;
    RlblCidade: TRLLabel;
    RLDBTNome: TRLDBText;
    RLDBTCPF: TRLDBText;
    RLDBTCidade: TRLDBText;
    RLSystemInforlsystmnf1: TRLSystemInfo;
    RLSystemInforlsystmnf2: TRLSystemInfo;
    Rbl1: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCliente: TFrmRelCliente;

implementation

uses
  CEDMCliente;

{$R *.dfm}

procedure TFrmRelCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RLReport.Preview();
  FrmRelCliente := nil;
  Action := caFree;
end;

end.
