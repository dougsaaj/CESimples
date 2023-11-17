inherited frmAltCadCliente: TfrmAltCadCliente
  Caption = 'Alterar Cadastro de Cliente'
  ClientHeight = 296
  ClientWidth = 590
  ExplicitWidth = 596
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 560
    Height = 225
    ExplicitLeft = 20
    ExplicitTop = 20
    ExplicitWidth = 560
    ExplicitHeight = 270
  end
  object labCodigo: TLabel [1]
    Left = 32
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtCodigo
  end
  object labNome: TLabel [2]
    Left = 136
    Top = 24
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
    FocusControl = edtNome
  end
  object Label3: TLabel [3]
    Left = 32
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = edtEndereco
  end
  object Label4: TLabel [4]
    Left = 32
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = edtBairro
  end
  object Label5: TLabel [5]
    Left = 304
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = edtCidade
  end
  object Label6: TLabel [6]
    Left = 32
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = cmbUF
  end
  object Label7: TLabel [7]
    Left = 88
    Top = 144
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = edtCep
  end
  object Label9: TLabel [8]
    Left = 32
    Top = 187
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
    FocusControl = edtCpfCnpj
  end
  inherited panRodape: TPanel
    Top = 255
    Width = 590
    ExplicitTop = 255
    ExplicitWidth = 590
    DesignSize = (
      590
      41)
    inherited btnOk: TBitBtn
      Left = 414
      OnClick = btnOkClick
      ExplicitLeft = 414
    end
    inherited btnCancel: TBitBtn
      Left = 502
      ExplicitLeft = 502
    end
    inherited dbnAltCadastro: TDBNavigator
      DataSource = DMCECliente.dtsCliente
      Hints.Strings = ()
    end
  end
  object edtCodigo: TDBEdit
    Left = 32
    Top = 40
    Width = 78
    Height = 21
    DataField = 'CHAVECLI'
    DataSource = DMCECliente.dtsCliente
    Enabled = False
    TabOrder = 1
  end
  object edtNome: TDBEdit
    Left = 136
    Top = 40
    Width = 420
    Height = 21
    DataField = 'NOME'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 2
  end
  object edtEndereco: TDBEdit
    Left = 32
    Top = 80
    Width = 524
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 3
  end
  object edtBairro: TDBEdit
    Left = 32
    Top = 120
    Width = 264
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 4
  end
  object edtCidade: TDBEdit
    Left = 304
    Top = 120
    Width = 252
    Height = 21
    DataField = 'CIDADE'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 5
  end
  object cmbUF: TDBComboBox
    Left = 32
    Top = 160
    Width = 45
    Height = 21
    DataField = 'UF'
    DataSource = DMCECliente.dtsCliente
    Items.Strings = (
      'MG'
      'SP'
      'RJ')
    TabOrder = 6
  end
  object edtCep: TDBEdit
    Left = 88
    Top = 160
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 7
  end
  object edtCpfCnpj: TDBEdit
    Left = 32
    Top = 203
    Width = 186
    Height = 21
    DataField = 'CPFCNPJ'
    DataSource = DMCECliente.dtsCliente
    TabOrder = 9
  end
  object rgTipoFiscal: TDBRadioGroup
    Left = 217
    Top = 147
    Width = 185
    Height = 42
    Caption = 'Tipo Fiscal'
    Columns = 2
    DataField = 'TIPOFISCAL'
    DataSource = DMCECliente.dtsCliente
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 8
    Values.Strings = (
      'F'
      'J')
  end
end
