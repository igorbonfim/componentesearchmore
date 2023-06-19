object frmCadastroCategoria: TfrmCadastroCategoria
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Categoria'
  ClientHeight = 241
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 75
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 208
    Width = 240
    Height = 25
    DataSource = dtsCadastro
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 94
    Width = 394
    Height = 21
    DataField = 'descricao'
    DataSource = dtsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 51
    Width = 134
    Height = 21
    DataField = 'categoriaId'
    DataSource = dtsCadastro
    Enabled = False
    TabOrder = 2
  end
  object QryCadastro: TZQuery
    Connection = frmPrincipal.SQLServerConexao
    UpdateObject = updCadastro
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS')
    Params = <>
    Left = 249
    Top = 8
    object QryCadastrocategoriaId: TIntegerField
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryCadastrodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CATEGORIAS'
      'WHERE'
      
        '  ((CATEGORIAS.categoriaId IS NULL AND :OLD_categoriaId IS NULL)' +
        ' OR (CATEGORIAS.categoriaId = :OLD_categoriaId))')
    InsertSQL.Strings = (
      'INSERT INTO CATEGORIAS'
      '  (descricao)'
      'VALUES'
      '  (:descricao)')
    ModifySQL.Strings = (
      'UPDATE CATEGORIAS SET'
      '  descricao = :descricao'
      'WHERE'
      
        '  ((CATEGORIAS.categoriaId IS NULL AND :OLD_categoriaId IS NULL)' +
        ' OR (CATEGORIAS.categoriaId = :OLD_categoriaId))')
    UseSequenceFieldForRefreshSQL = False
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_categoriaId'
        ParamType = ptUnknown
      end>
  end
  object dtsCadastro: TDataSource
    DataSet = QryCadastro
    Left = 424
    Top = 8
  end
end
