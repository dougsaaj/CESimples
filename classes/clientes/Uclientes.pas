unit Uclientes;

interface

type
  TCliente = class

  private
    FCHAVECLI   : Integer;
    FNOME       : string;
    FENDERECO   : string;
    FBAIRRO     : string;
    FCIDADE     : string;
    FUF         : string;
    FCEP        : string;
    FTIPOFISCAL : Integer;
    FCPFCNPJ    : string;
    FTIPOStr    : string;

public
  constructor Create;

published
  property CHAVECLI: Integer    read FCHAVECLI    write FCHAVECLI;
  property NOME: string         read FNOME        write FNOME;
  property ENDERECO: string     read FENDERECO    write FENDERECO;
  property BAIRRO: string       read FBAIRRO      write FBAIRRO;
  property CIDADE: string       read FCIDADE      write FCIDADE;
  property UF: string           read FUF          write FUF;
  property CEP: string          read FCEP         write FCEP;
  property TIPOFISCAL: Integer  read FTIPOFISCAL  write FTIPOFISCAL;
  property CPFCNPJ: string      read FCPFCNPJ     write FCPFCNPJ;
  property TIPOStr: string      read FTIPOStr     write FTIPOStr;

end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  inherited Create;
end;

end.
