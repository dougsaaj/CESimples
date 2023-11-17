inherited frmAltCadastro: TfrmAltCadastro
  Caption = 'frmAltCadastro'
  ClientHeight = 377
  ClientWidth = 564
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 570
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    AlignWithMargins = True
    Left = 15
    Top = 15
    Width = 534
    Height = 306
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Shape = bsFrame
    ExplicitLeft = 24
    ExplicitTop = 16
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  inherited panRodape: TPanel
    Top = 336
    Width = 564
    ExplicitTop = 336
    ExplicitWidth = 564
    DesignSize = (
      564
      41)
    inherited btnOk: TBitBtn
      Left = 384
      ExplicitLeft = 384
    end
    inherited btnCancel: TBitBtn
      Left = 472
      ExplicitLeft = 472
    end
    object dbnAltCadastro: TDBNavigator
      Left = 16
      Top = 8
      Width = 220
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 2
    end
  end
end
