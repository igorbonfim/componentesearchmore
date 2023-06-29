unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, SearchMore,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, EditClickKey, DBEditClickKey;

type
  TfrmPrincipal = class(TForm)
    SearchMore1: TSearchMore;
    dtsCategoriaFirebird: TDataSource;
    FirebirdConexao: TFDConnection;
    QryCategoriaFirebird: TFDQuery;
    QryCategoriaFirebirdCATEGORIAID: TIntegerField;
    QryCategoriaFirebirdDESCRICAO: TStringField;
    SQLServerConexao: TZConnection;
    QryCategoriaMSSQL: TZQuery;
    dtsCategoriaMSSQL: TDataSource;
    QryCategoriaMSSQLcategoriaId: TIntegerField;
    QryCategoriaMSSQLdescricao: TWideStringField;
    SearchMore2: TSearchMore;
    edtCategoriaIdSQLServer: TEdit;
    edtCategoriaDescricaoSQLServer: TEdit;
    edtCategoriaIdFirebird: TEdit;
    edtCategoriaDescricaoFirebird: TEdit;
    QryProduto: TZQuery;
    dtsProduto: TDataSource;
    edtDbCadCategoria: TDBEdit;
    QryProdutoprodutoId: TIntegerField;
    QryProdutonome: TWideStringField;
    QryProdutovalor: TFloatField;
    QryProdutoquantidade: TFloatField;
    QryProdutocategoriaId: TIntegerField;
    SearchMore3: TSearchMore;
    edtCategoriaDescricaoDBEdit: TEdit;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    edtClickKeyCategoriaID: TEditClickKey;
    SmClickKey: TSearchMore;
    edtDescricaoClickKey: TEdit;
    edtDBEditClickKeyID: TDBEditClickKey;
    DBNavigator2: TDBNavigator;
    SearchMore4: TSearchMore;
    edtDBEditClickKeyDescricao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SearchMore1BtnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('TESTE');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FirebirdConexao.Connected := true;
  SQLServerConexao.Connected := true;

  QryCategoriaFirebird.Active := true;
  QryCategoriaMSSQL.Active := true;
  QryProduto.Active := true;
end;

procedure TfrmPrincipal.SearchMore1BtnIncluirClick(Sender: TObject);
begin
  Try
    frmCadastroCategoria := TfrmCadastroCategoria.Create(Self);
    frmCadastroCategoria.ShowModal;

    QryCategoriaMSSQL.Refresh;
  Finally
    frmCadastroCategoria.Release;
  End;
end;

end.
