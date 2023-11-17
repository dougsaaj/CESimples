inherited frmPesquisar: TfrmPesquisar
  Caption = 'Pesquisar Registro'
  ClientHeight = 183
  ClientWidth = 271
  OnClose = FormClose
  ExplicitWidth = 277
  ExplicitHeight = 212
  PixelsPerInch = 96
  TextHeight = 13
  object labValor: TLabel [0]
    Left = 24
    Top = 80
    Width = 125
    Height = 13
    Caption = 'Digite o valor a pesquisar:'
  end
  inherited panRodape: TPanel
    Top = 142
    Width = 271
    DesignSize = (
      271
      41)
    inherited btnOk: TBitBtn
      Left = 91
    end
    inherited btnCancel: TBitBtn
      Left = 179
    end
  end
  object rgrOpcao: TRadioGroup
    Left = 24
    Top = 16
    Width = 225
    Height = 49
    Caption = 'Op'#231#227'o de pesquisa:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 24
    Top = 96
    Width = 225
    Height = 21
    TabOrder = 2
  end
end
