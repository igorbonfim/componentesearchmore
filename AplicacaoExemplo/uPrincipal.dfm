object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aplica'#231#227'o Exemplo'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SearchMore1: TSearchMore
    Left = 152
    Top = 40
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 0
    onClick = SearchMore1Click
    PesquisaCaption = 'Consulta'
    PesquisaWidth = 640
    PesquisaHeight = 480
    PesquisaTextHintMaskEdit = 'Digite a pesquisa'
    PesquisaCaptionMaskEdit = 'Pesquisar por ...'
  end
  object dtsCategoria: TDataSource
    Left = 352
    Top = 32
  end
end
