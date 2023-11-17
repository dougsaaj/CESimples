object frmDialogo: TfrmDialogo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmDialogo'
  ClientHeight = 282
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object panRodape: TPanel
    Left = 0
    Top = 241
    Width = 509
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      509
      41)
    object btnOk: TBitBtn
      Left = 329
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 417
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
