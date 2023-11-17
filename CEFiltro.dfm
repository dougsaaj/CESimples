inherited frmFiltro: TfrmFiltro
  Caption = 'frmFiltro'
  ClientHeight = 261
  ClientWidth = 281
  OnClose = FormClose
  ExplicitWidth = 287
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  object labValor: TLabel [0]
    Left = 24
    Top = 160
    Width = 105
    Height = 13
    Caption = 'Digite o valor a filtrar:'
  end
  inherited panRodape: TPanel
    Top = 220
    Width = 281
    DesignSize = (
      281
      41)
    inherited btnOk: TBitBtn
      Left = 101
    end
    inherited btnCancel: TBitBtn
      Left = 189
    end
  end
  object rgrCampos: TRadioGroup
    Left = 24
    Top = 16
    Width = 105
    Height = 129
    Caption = 'Campos:'
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 24
    Top = 176
    Width = 225
    Height = 21
    TabOrder = 2
  end
  object rgrCondicao: TRadioGroup
    Left = 152
    Top = 16
    Width = 105
    Height = 129
    Caption = 'Condi'#231#227'o de filtro:'
    ItemIndex = 0
    Items.Strings = (
      'Igual'
      'Maior'
      'Menor'
      'Diferente'
      'Cont'#233'm')
    TabOrder = 3
  end
end
