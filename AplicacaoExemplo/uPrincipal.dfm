object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aplica'#231#227'o Exemplo'
  ClientHeight = 477
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SearchMore1: TSearchMore
    Left = 152
    Top = 24
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 0
    PesquisaCaption = 'Consulta'
    PesquisaWidth = 640
    PesquisaHeight = 480
    PesquisaTextHintMaskEdit = 'Digite a pesquisa'
    PesquisaCaptionMaskEdit = 'Pesquisar por ...'
    PesquisaCaptionBotaoIncluir = '&Incluir'
    DataSource = dtsCategoriaMSSQL
    PesquisaIndexConsulta = 'descricao'
    OnBtnIncluirClick = SearchMore1BtnIncluirClick
    PesquisaControlBookMark = True
    PesquisaBtnIncluirGlyph.Data = {
      07544269746D61709E010000424D9E010000000000009E000000280000001000
      000010000000010008000000000000010000120B0000120B00001A0000001A00
      000000000000FFFFFF00FF00FF00035D050005950E0005930D0005920D00058C
      0D00058B0D0006950F0006920E000A9A15000C9C18000D9E1C00119F210017A6
      2B0018A92F0021B83C0025BC42002AC64D0030CF570030CE57003BD968003BDA
      690048EB7F005BF7910002020202020202020202020202020202020202020202
      0203030202020202020202020202020203190703020202020202020202020202
      0319040302020202020202020202020203190603020202020202020202020202
      0319090302020202020202020303030303190C03030303030202020319171413
      110F0E0D0B0A0508030202031919191919191019191919190302020203030303
      0319120303030303020202020202020203191503020202020202020202020202
      0319160302020202020202020202020203191803020202020202020202020202
      0319190302020202020202020202020202030302020202020202020202020202
      02020202020202020202}
    PesquisaBtnConfirmarGlyph.Data = {
      07544269746D617036050000424D360500000000000036040000280000001000
      0000100000000100080000000000000100000000000000000000000100000000
      0000FF00FF00004B0000098611000A8615000D931A000C9518000C9C19000F99
      1C000E9D1D001392240011A0210011A422001CA134001CB1350024BC430029B5
      48002EC6520035CA5E0039D46500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000001010000000000000000000000000001080801000000000000
      0000000000010D0B080B0100000000000000000001100E090104080100000000
      000000010D0E09010001030801000000000001100E0C01000000000104010000
      000000010F010000000000000103010000000000010000000000000000010301
      0000000000000000000000000000010301000000000000000000000000000001
      0100000000000000000000000000000001010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000}
    PesquisaBtnCancelarGlyph.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      000010000000010018000000000000030000120B0000120B0000000000000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF
      00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005
      B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF
      00FFFF00FFFF00FF0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF
      0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
      B70005B70005B6FF00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF0006C10005C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006
      E50006DA0006D3FF00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF
      0006F80006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006
      F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF
      00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF}
  end
  object DBGridMSSQL: TDBGrid
    Left = 590
    Top = 71
    Width = 513
    Height = 393
    DataSource = dtsCategoriaFirebird
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGridFirebird: TDBGrid
    Left = 8
    Top = 76
    Width = 513
    Height = 393
    DataSource = dtsCategoriaMSSQL
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SearchMore2: TSearchMore
    Left = 590
    Top = 24
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 3
    PesquisaCaption = 'Consulta'
    PesquisaWidth = 640
    PesquisaHeight = 480
    PesquisaTextHintMaskEdit = 'Digite a pesquisa'
    PesquisaCaptionMaskEdit = 'Pesquisar por ...'
    PesquisaCaptionBotaoIncluir = '&Incluir'
    DataSource = dtsCategoriaFirebird
    PesquisaIndexConsulta = 'DESCRICAO'
    PesquisaControlBookMark = False
  end
  object Edit1: TEdit
    Left = 621
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object dtsCategoriaFirebird: TDataSource
    DataSet = QryCategoriaFirebird
    Left = 952
    Top = 16
  end
  object FirebirdConexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Projetos\Curso Delphi Criando componentes na pr'#225'tica' +
        '\AplicacaoExemplo\db\dbcomponente.fdb'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 1048
    Top = 16
  end
  object QryCategoriaFirebird: TFDQuery
    IndexFieldNames = 'descricao'
    Connection = FirebirdConexao
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS')
    Left = 848
    Top = 16
    object QryCategoriaFirebirdCATEGORIAID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'CATEGORIAID'
      Origin = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCategoriaFirebirdDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object SQLServerConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    Connected = True
    HostName = '.'
    Port = 1433
    Database = 'dbComponente'
    User = 'sa'
    Password = '@ijbp12345'
    Protocol = 'mssql'
    LibraryLocation = 
      'C:\Projetos\Curso Delphi Criando componentes na pr'#225'tica\Aplicaca' +
      'oExemplo\ntwdblib.dll'
    Left = 232
    Top = 16
  end
  object QryCategoriaMSSQL: TZQuery
    Connection = SQLServerConexao
    SortedFields = 'descricao'
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Left = 312
    Top = 16
    object QryCategoriaMSSQLcategoriaId: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryCategoriaMSSQLdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsCategoriaMSSQL: TDataSource
    DataSet = QryCategoriaMSSQL
    Left = 400
    Top = 16
  end
end
