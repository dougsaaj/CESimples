unit CEDMCliente;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDMCECliente = class(TDataModule)
    dtsCliente: TDataSource;
    SQLCliente: TSQLQuery;
    ProvCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    CdsClienteCHAVECLI: TIntegerField;
    CdsClienteNOME: TStringField;
    CdsClienteENDERECO: TStringField;
    CdsClienteBAIRRO: TStringField;
    CdsClienteCIDADE: TStringField;
    CdsClienteUF: TStringField;
    CdsClienteCEP: TStringField;
    CdsClienteTIPOFISCAL: TStringField;
    CdsClienteCPFCNPJ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCECliente: TDMCECliente;

implementation

uses
  CEDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
