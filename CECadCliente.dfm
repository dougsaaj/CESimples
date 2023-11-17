inherited FrmCadCliente: TFrmCadCliente
  Caption = 'Cadastro de Cliente'
  ClientWidth = 580
  ExplicitWidth = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 550
    ExplicitLeft = 15
    ExplicitTop = 15
    ExplicitWidth = 535
    ExplicitHeight = 306
  end
  object labCodigo: TLabel [1]
    Left = 23
    Top = 44
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object labNome: TLabel [2]
    Left = 127
    Top = 44
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  object Label3: TLabel [3]
    Left = 23
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label4: TLabel [4]
    Left = 23
    Top = 128
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label5: TLabel [5]
    Left = 295
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label6: TLabel [6]
    Left = 23
    Top = 168
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel [7]
    Left = 79
    Top = 168
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label9: TLabel [8]
    Left = 23
    Top = 211
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
  end
  inherited panRodape: TPanel
    Width = 580
    TabOrder = 9
    ExplicitWidth = 580
    inherited btnOk: TBitBtn
      Left = 400
      OnClick = btnOkClick
      ExplicitLeft = 400
    end
    inherited btnCancel: TBitBtn
      Left = 488
      ExplicitLeft = 488
    end
    inherited dbnAltCadastro: TDBNavigator
      DataSource = DMCECliente.dtsCliente
      Hints.Strings = ()
      Visible = False
    end
  end
  object edtCodigo: TEdit
    Left = 23
    Top = 63
    Width = 90
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 127
    Top = 63
    Width = 418
    Height = 21
    MaxLength = 40
    TabOrder = 1
  end
  object edtEndereco: TEdit
    Left = 23
    Top = 103
    Width = 522
    Height = 21
    MaxLength = 40
    TabOrder = 2
  end
  object edtBairro: TEdit
    Left = 23
    Top = 143
    Width = 250
    Height = 21
    MaxLength = 20
    TabOrder = 3
  end
  object edtCidade: TEdit
    Left = 295
    Top = 143
    Width = 250
    Height = 21
    MaxLength = 20
    TabOrder = 4
  end
  object edtCep: TEdit
    Left = 79
    Top = 187
    Width = 123
    Height = 21
    MaxLength = 8
    TabOrder = 6
  end
  object edtCPF: TEdit
    Left = 23
    Top = 230
    Width = 179
    Height = 21
    MaxLength = 14
    TabOrder = 8
    OnKeyPress = edtCPFKeyPress
  end
  object cbbEstado: TComboBox
    Left = 23
    Top = 187
    Width = 50
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'MG'
    Items.Strings = (
      'MG'
      'RJ'
      'SP')
  end
  object rgTipoFiscal: TRadioGroup
    Left = 295
    Top = 174
    Width = 185
    Height = 41
    Caption = 'Tipo Fiscal'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 7
  end
end
