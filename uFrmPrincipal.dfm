object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Enum'
  ClientHeight = 174
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btPorcentagem: TButton
    Left = 174
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Ver %'
    TabOrder = 0
    OnClick = btPorcentagemClick
  end
  object cbImpostoRenda: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Pessoa Fisica'
      'Pessoa Juridica')
  end
end
