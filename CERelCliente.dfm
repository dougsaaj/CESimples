object FrmRelCliente: TFrmRelCliente
  Left = 0
  Top = 0
  Caption = 'FrmRelCliente'
  ClientHeight = 488
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = 64
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DMCECliente.dtsCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBandTitulo: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 68
      BandType = btColumnHeader
      object RlblTitulo: TRLLabel
        Left = 272
        Top = 32
        Width = 182
        Height = 22
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInforlsystmnf1: TRLSystemInfo
        Left = 594
        Top = 1
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInforlsystmnf2: TRLSystemInfo
        Left = 671
        Top = 2
        Width = 34
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object Rbl1: TRLLabel
        Left = 594
        Top = 19
        Width = 77
        Height = 14
        Caption = 'P'#225'gina:         de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 630
        Top = 19
        Width = 25
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 671
        Top = 19
        Width = 31
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLBandCabecalho: TRLBand
      Left = 38
      Top = 106
      Width = 718
      Height = 17
      AutoSize = True
      BandType = btColumnHeader
      object RlblCodigo: TRLLabel
        Left = 16
        Top = 1
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RlblNome: TRLLabel
        Left = 76
        Top = 1
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RlblCPF: TRLLabel
        Left = 396
        Top = 1
        Width = 67
        Height = 16
        Caption = 'CPF/CNPJ'
      end
      object RlblCidade: TRLLabel
        Left = 538
        Top = 1
        Width = 44
        Height = 16
        Caption = 'Cidade'
      end
    end
    object RLBandDetalhe: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 21
      object RLDBTCodigo: TRLDBText
        Left = 16
        Top = 4
        Width = 54
        Height = 16
        AutoSize = False
        DataField = 'CHAVECLI'
        DataSource = DMCECliente.dtsCliente
        Text = ''
      end
      object RLDBTNome: TRLDBText
        Left = 76
        Top = 4
        Width = 314
        Height = 16
        AutoSize = False
        DataField = 'NOME'
        DataSource = DMCECliente.dtsCliente
        Text = ''
      end
      object RLDBTCPF: TRLDBText
        Left = 396
        Top = 4
        Width = 136
        Height = 16
        AutoSize = False
        DataField = 'CPFCNPJ'
        DataSource = DMCECliente.dtsCliente
        Text = ''
      end
      object RLDBTCidade: TRLDBText
        Left = 538
        Top = 4
        Width = 177
        Height = 16
        AutoSize = False
        DataField = 'CIDADE'
        DataSource = DMCECliente.dtsCliente
        Text = ''
      end
    end
    object RLBandRodape: TRLBand
      Left = 38
      Top = 144
      Width = 718
      Height = 15
      BandType = btFooter
      object RLLabel3: TRLLabel
        Left = 614
        Top = 1
        Width = 101
        Height = 12
        Caption = 'Curso Delphi - Oriontec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
