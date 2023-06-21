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
