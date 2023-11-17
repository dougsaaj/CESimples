object DMCECliente: TDMCECliente
  OldCreateOrder = False
  Height = 311
  Width = 523
  object dtsCliente: TDataSource
    DataSet = CdsCliente
    Left = 64
    Top = 200
  end
  object SQLCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      '  cliente.chavecli,'
      '  cliente.nome,'
      '  cliente.endereco,'
      '  cliente.bairro,'
      '  cliente.cidade,'
      '  cliente.uf,'
      '  cliente.cep,'
      '  cliente.tipofiscal,'
      '  cliente.cpfcnpj'
      'from'
      '  cliente')
    SQLConnection = DMCE.Conn
    Left = 64
    Top = 40
  end
  object ProvCliente: TDataSetProvider
    DataSet = SQLCliente
    Left = 64
    Top = 96
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProvCliente'
    Left = 64
    Top = 152
    object CdsClienteCHAVECLI: TIntegerField
      FieldName = 'CHAVECLI'
      Required = True
    end
    object CdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object CdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object CdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsClienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object CdsClienteTIPOFISCAL: TStringField
      FieldName = 'TIPOFISCAL'
      FixedChar = True
      Size = 1
    end
    object CdsClienteCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      FixedChar = True
      Size = 14
    end
  end
end
